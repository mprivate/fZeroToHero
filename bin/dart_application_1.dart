void main() {
  var grade = 'G';

  switch (grade) {
    case 'A':
      {
        print('You did great! Congrats');
        break;
      }
    case 'B':
      {
        print('Good Effort');
        break;
      }
    case 'C':
      {
        print('Not great, but you passed.');
        break;
      }
    case 'D':
      {
        print('Uh oh, you should study more');
        break;
      }
    case 'F':
      {
        print('You\'ll have to try harder next time!');
        break;
      }
    default:
      {
        print('Invalid choice');
        break;
      }
  }
}
