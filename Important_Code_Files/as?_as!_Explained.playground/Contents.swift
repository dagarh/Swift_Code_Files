class Developer {
    func printWhoAmI() {
        print("I am Developer")
    }
    
    func standAloneDeveloper() {
        print("Stand Alone Developer")
    }
}

class Android: Developer {
    override func printWhoAmI() {
        print("I am an Android Developer")
    }
    
    func standAloneAndroidDeveloper() {
        print("Standalone Android Developer")
    }
}

class iOS: Developer {
    override func printWhoAmI() {
        print("I am an iOS developer")
    }
}

class CSharp: Developer {
    override func printWhoAmI() {
        print("I am a C Sharp developer")
    }
}


let devs: [Developer] = [Developer(), Android(), iOS(), CSharp()]


// We do type-checking with the help of "is" operator in Swift.
// Whenever you do type checking with "is" then it is always seen from "Object is Reference" perspective.
// "is" operator is used for the type checking.
/* Whenever doing type checking with the help of "is" operator then : part before "is" is always object and
    part after "is" is always reference. Think it like this way. */
print(type(of: devs[1]))    // when using type(of:) then it shows from the object perspective, not from the reference perspective.
print(Android() is Developer)  // same as [print(devs[1] is Developer)]
print(devs[1] is Android)  // Format is like "Object" is "Reference" --> true if Reference is Ancestor or Same_type


// We do type-casting (could be upcasting or downcasting) with the help of "as" operator in Swift.
/*
 When you are using "reference" of Parent's class and "object" of Child's class then we can only access those properties/methods which
 are getting inherited in object's class from the parent's class. But with that reference you can not access everything --> remember this.
 
 Object as?/as!/as Reference --> this is general format.

 Before type-casting, it is always preferred for type-checking because we do the type-casting, only when type-checking is successful.
 
 "devs[1] as? Developer" is same as  ( if devs[1] is Developer { devs[1] as Developer } else { return nil}  )
 "devs[1] as! Developer" --> it is forced-type-casting, it will throw runtime error if "devs[1] is Developer" is false.
*/
if let andDev = devs[1] as? Developer {
    print()
    andDev.printWhoAmI()
    andDev.standAloneDeveloper()
    // Here you can not access standAloneAndroidDeveloper() method because reference is of Developer class.
    print()
}

if let andDev1 = devs[1] as? Android {
    print()
    andDev1.printWhoAmI()
    andDev1.standAloneAndroidDeveloper()
    andDev1.standAloneDeveloper()
    print()
}


for dev in devs {
    // Code below prints each line once for every type. The base class Developer does not print anything since it is a superclass.
    
    // The line below will get executed for every object since all of them are either of type Developer or inherit from it
    
    if let andDev = dev as? Developer {
        print("Developer")
    }
    
    // The lines below will get printed only once for every conforming type
    
    if let andDev = dev as? Android {
        print("Casted to Android")
    }
    
    if let iOSDev = dev as? iOS {
        print("Casted to iOS")
    }
    
    if let cSharpDev = dev as? CSharp {
        print("Casted to C Sharp")
    }
    
    print()
}




