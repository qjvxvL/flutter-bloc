abstract class State_decrement{}

class State_decrement_initial extends State_decrement{}
class State_decrement_update extends State_decrement{
  final int number;
  State_decrement_update(this.number);
}