#define GLM_ENABLE_EXPERIMENTAL
// glm
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/rotate_vector.hpp>
#include <glm/gtc/type_ptr.hpp>

// project
#include "cgra/cgra_geometry.hpp"
#include "cgra/cgra_shader.hpp"
#include "cgra/cgra_mesh.hpp"
#include "skeleton_model.hpp"
#include "application.hpp"
#include <vector>
#include <GLFW/glfw3.h>
#include <GL/glew.h>

#include <iostream>

using namespace std;
using namespace glm;
using namespace cgra;

void skeleton_model::draw(const mat4 &view, const mat4 &proj) {
    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));

    // if the skeleton is not empty, then draw
    if (!skel.bones.empty()) {
        drawMesh(view, 0, proj);
    }
}

void basic_model2::drawJoint(const mat4 &view, const mat4 &proj) {
    mat4 modelTransformations(view);
    modelTransformations = glm::scale(modelTransformations, vec3(0.03));

    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));
    glUniformMatrix4fv(glGetUniformLocation(shader, "uModelViewMatrix"), 1, false, value_ptr(modelTransformations));
    glUniform3fv(glGetUniformLocation(shader, "uColor"), 1, value_ptr(color));

    //mesh.draw();
    cout<<"Draw Sphere"<<endl;
    drawSphere();
}

void basic_model2::drawBone(const mat4 &view, const mat4 &proj, skeleton_bone currentBone) {
    mat4 modelTransformations(view);
    modelTransformations *= glm::orientation(currentBone.direction, vec3(0.0, 0.0, 1.0));
    modelTransformations = glm::scale(modelTransformations, vec3(0.01, 0.01, currentBone.length));

    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));
    glUniformMatrix4fv(glGetUniformLocation(shader, "uModelViewMatrix"), 1, false, value_ptr(modelTransformations));
    glUniform3fv(glGetUniformLocation(shader, "uColor"), 1, value_ptr(color));

    //mesh.draw();
    cout<<"Draw Cylinder"<<endl;
    drawCylinder();
}

void basic_model2::drawArrowX(const mat4 &view, const mat4 &proj, skeleton_bone currentBone) {
    mat4 modelTransformations(view);
    cout<<"bone basis "<<currentBone.basis.x<<endl;
    modelTransformations *= glm::rotate(glm::mat4(1), glm::pi<float>() / 2.0f, glm::vec3(0, 1, 0));


    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.y, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.z, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.x, glm::vec3(1));
    modelTransformations = glm::scale(modelTransformations, vec3(0.005, 0.005, 0.1));

    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));
    glUniformMatrix4fv(glGetUniformLocation(shader, "uModelViewMatrix"), 1, false, value_ptr(modelTransformations));
    glUniform3fv(glGetUniformLocation(shader, "uColor"), 1, value_ptr(color));

    //mesh.draw();
    drawCylinder();
}
void basic_model2::drawArrowY(const mat4 &view, const mat4 &proj, skeleton_bone currentBone) {
    mat4 modelTransformations(view);
    modelTransformations *= glm::orientation(currentBone.direction, currentBone.basis);
    modelTransformations *= glm::rotate(glm::mat4(1), glm::pi<float>() / 2.0f, glm::vec3(-1, 0, 0));

    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.y, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.z, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.x, glm::vec3(1));


    modelTransformations = glm::scale(modelTransformations, vec3(0.005, 0.005, 0.1));

    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));
    glUniformMatrix4fv(glGetUniformLocation(shader, "uModelViewMatrix"), 1, false, value_ptr(modelTransformations));
    glUniform3fv(glGetUniformLocation(shader, "uColor"), 1, value_ptr(color));

    //mesh.draw();
    drawCylinder();
}
void basic_model2::drawArrowZ(const mat4 &view, const mat4 &proj, skeleton_bone currentBone) {
    mat4 modelTransformations(view);
    //modelTransformations *= glm::orientation(currentBone.direction, currentBone.basis);
    modelTransformations *= glm::rotate(glm::mat4(1), glm::pi<float>() / 2.0f, glm::vec3(0, 0, 1));

    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.y, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.z, glm::vec3(1));
    modelTransformations *= glm::rotate(glm::mat4(1), currentBone.basis.x, glm::vec3(1));
    modelTransformations = glm::scale(modelTransformations, vec3(0.005, 0.005, 0.1));

    // set up the shader for every draw call
    glUseProgram(shader);
    glUniformMatrix4fv(glGetUniformLocation(shader, "uProjectionMatrix"), 1, false, value_ptr(proj));
    glUniformMatrix4fv(glGetUniformLocation(shader, "uModelViewMatrix"), 1, false, value_ptr(modelTransformations));
    glUniform3fv(glGetUniformLocation(shader, "uColor"), 1, value_ptr(color));

    //mesh.draw();
    drawCylinder();
}

void skeleton_model::drawMesh(const mat4 &parentTransform, int boneid, const mat4 &proj) {
    // TODO
    cout<<"Bone ID: "<<boneid<<endl;
    mat4 modelTrans(parentTransform);
    skeleton_bone currentBone;
        //find the current bone by checking id
        for(int i = 0; i<(int)skel.bones.size(); i++){
            if(skel.findBone(skel.bones[i].name) == boneid){
                currentBone = skel.bones[i];
            }
        }
    m_joint_mesh.drawJoint(parentTransform, proj);
    m_bone_mesh.drawBone(parentTransform, proj, currentBone);

    if(boneid != 0){
        m_arrowx_mesh.drawArrowX(parentTransform, proj, currentBone);
        m_arrowy_mesh.drawArrowY(parentTransform, proj, currentBone);
        m_arrowz_mesh.drawArrowZ(parentTransform, proj, currentBone);
    }

    ///Offset transformation from the parent to child (direction*length) then rotation based on the axis
    modelTrans = glm::translate(modelTrans, currentBone.direction * currentBone.length);
    cout<<"children "<<currentBone.children.size()<<endl;

    ///recursively do the same for the children
    for (int child : currentBone.children){
        int newID = skel.findBone(skel.bones[child].name);
        drawMesh(modelTrans, newID, proj);
    }
}

/*
///Catmull-Rom Spline
struct Point{
    float x;
    float y;
    // You might need additional dimensions here (e.g., z for 3D points)
};

Point CatmullRom(const Point& p0, const Point& p1, const Point& p2, const Point& p3, const Point& p4, float t) {
    // Basic Matrix
    const float m[5][5] = {
            {0.5f, 1.5f, 1.5f, 0.5f},
            {1.0f, 2.5f, 2.0f, 0.5f},
            {0.5f, 0.0f, 0.5f, 0.0f},
            {0.0f, 1.0f, 0.0f, 0.0f},
            {0.5f, 1.5f, 0.5f, 0.5f}
    };

    /// Compute powers for t
    float t2 = t * t;
    float t3 = t2 * t;

    // Multiply the basis matrix by the powers of t
    std::vector<float> T = {
            m[0][0] * t3 + m[1][0] * t2 + m[2][0] * t + m[3][0],
            m[0][1] * t3 + m[1][1] * t2 + m[2][1] * t + m[3][1],
            m[0][2] * t3 + m[1][2] * t2 + m[2][2] * t + m[3][2],
            m[0][3] * t3 + m[1][3] * t2 + m[2][3] * t + m[3][3],
            m[0][4] * t3 + m[1][4] * t2 + m[2][4] * t + m[3][4]
    };

    /// Compute the points
    Point result = {
            p0.x * T[0] + p1.x * T[1] + p2.x * T[2] + p3.x * T[3] + p4.x * T[4],
            p0.y * T[0] + p1.y * T[1] + p2.y * T[2] + p3.y * T[3] + p4.y * T[4]
            /// Similarly, add more dimensions if needed
    };

    return result;
}


        // Compute and render interpolated points along the spline
        glBegin(GL_LINE_STRIP);
        for (float t = 0.0f; t <= 1.0f; t += 0.01f) {
            Point interpolated = CatmullRom(p0, p1, p2, p3, t);
            glVertex2f(interpolated.x, interpolated.y);
        }
        glEnd();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}
*/


