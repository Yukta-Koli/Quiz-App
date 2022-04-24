class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['June 2017', 'July 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Output>>', 'Cout'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Which element is said to keep bones strong?",
    "options": ['Carbon', 'Oxygen', 'Calcium', 'Potasium'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Which planet is hottest in the solar system?",
    "options": ['Venus', 'Jupiter', 'Earth', 'Saturn'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "What country won the very first FIFA World Cup in 1930?",
    "options": ['Brazil', 'Germany', 'Italy', 'Uruguay'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "How many molecules of oxygen does ozone have?",
    "options": ['1', '3', '5', '2'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "The first Indian to recieve NOBLE PRIZE in Literature was?",
    "options": ['Rabindranath Tagore', 'Mother Teresa', 'C. V. Raman', 'Sarojini Naidu'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "What does the abbreviation 'http' stand for?",
    "options": ['Hindustan Times Technical Professionals', 'High Task Termination Procedure', 'Hypertext Transfer Protocol', 'Harvard Teletext Proof'],
    "answer_index": 2,
  },

];
