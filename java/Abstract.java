abstract class Animal {
    // Abstract method (does not have a body)
    public abstract void animalSound();
    // Regular method
    public void sleep() {
      System.out.println("Zzz");
    }
  }
  
  // Subclass (inherit from Animal)
  class Camel extends Animal {
    public void animalSound() {
      // The body of animalSound() is provided here
      System.out.println("This is a camel");
    }
  }
  
  class Abstract {
    public static void main(String[] args) {
      Camel camel1 = new Camel(); // Create a Pig object
      camel.animalSound();
      camel.sleep();
    }
  }
