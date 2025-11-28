abstract class State_multiplication{}


class State_multiplication_initial extends State_multiplication{}
class State_multiplication_update extends State_multiplication{
  final int number;
  State_multiplication_update(this.number);
}