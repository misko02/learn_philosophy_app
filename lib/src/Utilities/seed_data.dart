import 'package:learn_philosophy_app/src/Models/quiz_result/quiz_result.dart';
import 'package:learn_philosophy_app/src/Models/topic/topic.dart';

import '../Models/question/question.dart';
import '../Models/quiz/quiz.dart';
import '../Models/site/site.dart';

class SeedData {
  static List<Topic> seedTopics = [
    Topic(
      topicId: 0,
      title: 'Introduction to Philosophy',
      description: 'This is an introduction to philosophy',
      sites: [
        Site(
          id: 0,
          title: 'Beginning of the philosophy',
          content: 'First philosopher was Thales of Miletus, who lived in the 6th century BC. He was the first to ask questions about the nature of the world and the universe. He is considered the first philosopher in the Western tradition.'
        ),
        Site(
          id: 1,
          title: 'The Presocratics',
          content: 'Before the Socrates there were the Presocratics. They were the first philosophers in the Western tradition. They were interested in the nature of the world and the universe. They were the first to ask questions about the nature of the world and the universe.'
        ),
        Site(
          id: 2,
          title: 'Socrates',
          content: 'Socrates was a philosopher who lived in Athens in the 5th century BC. He was the first to ask questions about the nature of the world and the universe. He is considered the first philosopher in the Western tradition.'
        ),
      ],
      quiz:  Quiz(
        quizId: 0,
        title: 'Introduction to Philosophy Quiz',
        questions: [
           Question(
            id: 0,
            content: 'Who was the first philosopher?',
            answers: [
              "Thales of Miletus",
             "Socrates",
              "Plato",
              "Aristotle"
            ], 
            correctAnswerIndex: 0
          ),
           Question(
            id: 1,
            content: 'Who were the Presocratics?',
            answers: [
              "The first philosophers in the Western tradition",
              "The first philosophers in the Eastern tradition",
              "The first philosophers in the Southern tradition",
              "The first philosophers in the Northern tradition"
            ],
            correctAnswerIndex: 0
          ),
          
        ],
        result: QuizResult(correctAnswers: 0,wrongAnswers: 0),
      ), 
    ),
    Topic(
      topicId: 1,
      title: 'Epistemology',
      description: 'This is an introduction to epistemology',
      sites: [
        Site(
          id: 0,
          title: 'Idealism',
          content: 'Some of the most known idealists are Plato, George Berkeley, and Immanuel Kant. Idealism is the view that reality is fundamentally mental, or that everything that exists is either mental or depends on the mind for its existence.'
        ),
        Site(
          id: 1,
          title: 'Empirism',
          content: 'Empiricism is a theory that states that knowledge comes only or primarily from sensory experience. It is one of several views of epistemology, along with rationalism and skepticism.'
        ),
        Site(
          id: 2,
          title: 'Rationalism',
          content: 'Rationalism is a philosophical theory that states that knowledge comes from reason or thinking. It is one of several views of epistemology, along with empiricism and skepticism.'
        ),
      ],
      quiz:  Quiz(
        quizId: 1,
        title:'Epistemology Quiz',
        questions: [
           Question(
            id: 0,
            content: 'Who are some of the most known idealists?',
            answers: [
              "Plato, George Berkeley, and Immanuel Kant",
              "Aristotle, George Berkeley, and Immanuel Kant",
              "Plato, George Berkeley, and Aristotle",
              "Plato, Aristotle, and Immanuel Kant"
            ],
            correctAnswerIndex: 0
          ),
           Question(
            id: 1,
            content: 'What is empiricism?',
            answers: [
              "A theory that states that knowledge comes only or primarily from sensory experience",
              "A theory that states that knowledge comes only or primarily from reason",
              "A theory that states that knowledge comes only or primarily from intuition",
              "A theory that states that knowledge comes only or primarily from faith"
            ],
            correctAnswerIndex: 0
          ),
        ],
        result: QuizResult(correctAnswers: 0, wrongAnswers: 0),   
         )
    ),
    Topic(
      topicId: 2,
      title: 'Metaphysics',
      description: 'This is an introduction to metaphysics',
      sites: [
        Site(
          id: 0,
          title: 'Materialism',
          content: 'Materialism is a philosophical theory that states that everything in the universe is made of matter. It is one of several views of metaphysics, along with idealism and dualism.'
        ),
        Site(
          id: 1,
          title: 'Dualism',
          content: 'The core of dualism is the idea that there are two kinds of substances: material and immaterial. The material substance is the body, and the immaterial substance is the mind. The mind is not physical, and it is not made of matter. It is a separate substance from the body.'
        ),
        Site(
          id: 2,
          title: 'Monism',
          content: 'Most philosophers believe that there is only one kind of substance in the universe. This view is called monism. Monism is the view that there is only one kind of substance in the universe. It is one of several views of metaphysics, along with dualism and pluralism.'
        ),
      ],
      quiz: Quiz(
        quizId: 2,
        title: 'Metaphysics Quiz',
        questions: [
           Question(
            id: 0,
            content: 'What is materialism?',
            answers: [
              "A philosophical theory that states that everything in the universe is made of spirit",
              "A philosophical theory that states that everything in the universe is made of energy",
              "A philosophical theory that states that everything in the universe is made of matter",
              "A philosophical theory that states that everything in the universe is made of ideas"
            ],
            correctAnswerIndex: 2
          ),
          Question(
            id: 1,
            content: 'What is dualism?',
            answers: [
              "The idea that there are three kinds of substances: material, immaterial, and spiritual",
              "The idea that there are two kinds of substances: material and immaterial",
              "The idea that there are four kinds of substances: material, immaterial, spiritual, and mental",
              "The idea that there are five kinds of substances: material, immaterial, spiritual, mental, and physical"
            ],
            correctAnswerIndex: 1
          ),
          ],
        result: QuizResult(correctAnswers: 0, wrongAnswers: 0),
         )
    ),
    Topic(
      topicId: 3,
      title: 'Ethics',
      description: 'This is an introduction to ethics',
      sites: [
        Site(
          id: 0,
          title: 'Kantism',
          content: 'Kantian ethics is a deontological ethical theory that is based on the teachings of the philosopher Immanuel Kant. Kantian ethics is a deontological ethical theory that is based on the teachings of the philosopher Immanuel Kant. Kantian ethics is a deontological ethical theory that is based on the teachings of the philosopher Immanuel Kant.'
        ),
        Site(
          id: 1,
          title: 'Uthilitarianism',
          content: 'Utilitarianism is a consequentialist ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain. Utilitarianism is a consequentialist ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain.'
        )
      ],
      quiz: Quiz(
        quizId: 3,
        title: 'Ethics Quiz',
        questions: [
           Question(
            id: 0,
            content: 'What is Kantian ethics?',
            answers: [
              "A deontological ethical theory that is based on the teachings of the philosopher Immanuel Kant",
              "A consequentialist ethical theory that is based on the teachings of the philosopher Immanuel Kant",
              "A virtue ethical theory that is based on the teachings of the philosopher Immanuel Kant",
              "A utilitarian ethical theory that is based on the teachings of the philosopher Immanuel Kant"
            ],
            correctAnswerIndex: 0
          ),
           Question(
            id: 1,
            content: 'What is utilitarianism?',
            answers: [
              "A consequentialist ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain",
              "A deontological ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain",
              "A virtue ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain",
              "A utilitarian ethical theory that is based on the idea that the best action is the one that maximizes happiness or pleasure and minimizes suffering or pain"
            ],
            correctAnswerIndex: 0
          ),
        ],
      )
    ),
    Topic(
      topicId: 4,
      title: 'Logic',
      description: 'This is an introduction to logic',
      sites: [
        Site(
          id: 0,
          title: 'Aristotelian Logic',
          content: 'Aristotelian logic is a system of logic that was developed by the ancient Greek philosopher Aristotle. It is a system of logic that is based on the idea that there are four basic types of statements: universal affirmative, universal negative, particular affirmative, and particular negative.'
        ),
        Site(
          id: 1,
          title: 'Propositional Logic',
          content: 'Propositional logic is a system of logic that is based on the idea that there are two basic types of statements: propositions and connectives. Propositions are statements that can be either true or false. Connectives are words that connect propositions together.'
        )
      ],
      quiz: Quiz(
        quizId: 4,
        title: 'Logic Quiz',
        questions: [
           Question(
            id: 0,
            content: 'What is Aristotelian logic?',
            answers: [
              "A system of logic that is based on the idea that there are four basic types of statements: universal affirmative, universal negative, particular affirmative, and particular negative",
              "A system of logic that is based on the idea that there are three basic types of statements: universal affirmative, universal negative, and particular affirmative",
              "A system of logic that is based on the idea that there are two basic types of statements: universal affirmative and universal negative",
              "A system of logic that is based on the idea that there are five basic types of statements: universal affirmative, universal negative, particular affirmative, particular negative, and particular neutral"
            ],
            correctAnswerIndex: 0
          ),
           Question(
            id: 1,
            content: 'What is propositional logic?',
            answers: [
              "A system of logic that is based on the idea that there are two basic types of statements: propositions and connectives",
              "A system of logic that is based on the idea that there are three basic types of statements: propositions, connectives, and quantifiers",
              "A system of logic that is based on the idea that there are four basic types of statements: propositions, connectives, quantifiers, and variables",
              "A system of logic that is based on the idea that there are five basic types of statements: propositions, connectives, quantifiers, variables, and operators"
            ],
            correctAnswerIndex: 0
          ),
        ],
      )
    ),
  ];
}