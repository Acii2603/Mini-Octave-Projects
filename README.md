# Mini Octave Projects

**Author**: Alexandru-Andrei Ionita    
**Year**: 2022-2023  
**Source Files**: `main.c`, `apply.h`, `case.h`, `crop.h`, `exitfile.h`, `histogram.h`, `load.h`, `save.h`, `select.h`, `struct.h`

## 1. **Markov Maze: A Probabilistic Exploration through Labyrinths**

### Project Overview:
In this project, the goal was to navigate a robot through a complex maze using a probabilistic model based on Markov chains. The robot starts at a designated position and must find its way to one of the exits, where each exit leads either to victory or defeat. The challenge lies in determining the probability of the robot reaching a winning exit while choosing directions randomly from available paths.

We modeled the maze as a state machine using Markov chains, with each cell representing a possible state of the robot. The robot's possible movements between cells were encoded in a transition matrix, allowing us to simulate its path through the maze. We leveraged adjacency and link matrices to represent and compute the robot’s transitions between states based on the maze structure.

A key component of the project was designing a heuristic greedy search algorithm, which enabled the robot to choose paths with higher probabilities of success rather than relying on brute-force methods. The heuristic approach significantly improved the robot's efficiency, allowing it to reach the winning exits more often and more quickly than random exploration.

### Technical Features:
- **Probabilistic Modeling**: Implementation of Markov chains to represent robot movements in the maze.
- **Adjacency and Link Matrices**: Used to structure and compute transitions between cells based on maze connectivity.
- **Heuristic Search Algorithm**: Developed a greedy algorithm for optimized pathfinding through probabilistic evaluation.
- **Matrix Operations**: Employed sparse matrices and the Jacobi iterative method to solve systems of linear equations that modeled the probability of the robot’s movements.

### Visualizations: 
We visualized the robot's journey through various maze configurations, showcasing how it avoids dead ends and optimizes its chances of success based on probabilistic reasoning.

---

## 2. **Predicting Real Estate Prices using Multiple Linear Regression**

### Project Overview:
This project focused on developing a predictive model for real estate prices using the principles of multiple linear regression. The task was to predict housing prices based on several property features, including area, number of bedrooms, and additional factors such as guest rooms and whether the property had access to a main road. By incorporating these features into our model, we aimed to create a highly accurate price prediction tool.

The core of the project involved building a regression model that could learn from historical housing data. We used gradient descent as the optimization technique to minimize the cost function, which represents the difference between predicted and actual prices. To improve the model's performance, we employed regularization methods, including Lasso (L1 regularization) and Ridge (L2 regularization), to avoid overfitting and ensure generalization to unseen data.

Moreover, we explored advanced numerical methods such as the conjugate gradient method for solving systems of linear equations, enabling faster convergence in the training process. The project also included a comprehensive preprocessing phase, where categorical data (such as whether a property had a guest room or basement) was converted into numerical features to be used by the model.

### Technical Features:
- **Multiple Linear Regression**: Applied to predict real estate prices based on multiple property attributes.
- **Gradient Descent Optimization**: Used to minimize the cost function and improve the accuracy of the price predictions.
- **Regularization Techniques**: Implemented Ridge and Lasso regression to prevent overfitting and enhance model robustness.
- **Data Preprocessing**: Categorical features were encoded numerically to be compatible with the regression model.
- **CSV Data Handling**: Parsed and processed large datasets stored in CSV format, transforming them into feature matrices for model training.

### Outcome:
The project resulted in a predictive model that could estimate housing prices with high accuracy, while also providing insights into how different property features impacted the final valuation.

---

## 3. **MNIST 101: Handwritten Digit Classification Using Neural Networks**

### Project Overview:
In this project, we tackled the problem of classifying handwritten digits from the well-known MNIST dataset. This task involved developing a neural network model capable of recognizing digits (0-9) from grayscale images of size 20x20 pixels. The main challenge was to train the network to accurately classify the images, which are represented as 400 pixel intensity values, into one of the 10 digit categories.

The approach began by adapting concepts from linear regression to logistic regression, making it suitable for classification tasks. We expanded this idea further by building a simple neural network consisting of an input layer (400 units), a hidden layer (25 units), and an output layer (10 units, one for each digit class). This architecture allowed the model to learn complex patterns in the pixel data and make reliable predictions on unseen images.

During the training phase, we implemented backpropagation to compute the gradients necessary for updating the network's weights. Gradient descent was used as the optimization method to minimize the cost function, which measured the difference between the predicted and actual digit labels. Regularization techniques were also applied to prevent overfitting and ensure that the model generalized well to new, unseen data.

### Technical Features:
- **Logistic Regression Adaptation**: Extended linear regression concepts to handle classification, applying them to a neural network framework.
- **Neural Network Architecture**: Built a 3-layer neural network with 400 input units (pixels), 25 hidden units, and 10 output units corresponding to the digits.
- **Forward and Backward Propagation**: Implemented forward propagation for prediction and backpropagation to compute gradients for weight updates.
- **Gradient Descent Optimization**: Applied gradient descent to minimize the error between predicted and actual labels, ensuring accurate classification.
- **Regularization**: Employed techniques to avoid overfitting, improving the model's ability to generalize beyond the training set.

### Dataset and Implementation: 
The MNIST dataset contains thousands of images of handwritten digits, and we used supervised learning to train the model on labeled examples. Each image was flattened into a vector of 400 features (pixel intensity values), and the network learned to associate these features with the correct digit label.

### Outcome:
The resulting model was able to classify handwritten digits with a high degree of accuracy, demonstrating the effectiveness of neural networks for image-based tasks. This project provided a practical introduction to neural network design, gradient-based optimization, and the application of machine learning to real-world classification problems.
