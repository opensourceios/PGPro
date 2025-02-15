//
//  ExampleDataService.swift
//  PGPro
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.

import Foundation
import ObjectivePGP


/**
     Generate example entries for screenshots and debugging
*/
class ExampleDataService {
    
    private init() {}
    
    static func createExampleDataset() {
        
        let nilKey = Key(secretKey: nil, publicKey: nil)
        
        let keyGen = KeyGenerator()
                
        assert(ContactListService.addContact(name: "Winston Smith",
                              email: "winston.smith@pgpro.app",
                              key: keyGen.generate(for: "winston.smith@pgpro.app",
                                                   passphrase: nil)))
        
        assert(ContactListService.addContact(name: "O'Brien",
                             email: "obiren@pgpro.app",
                             publicKey: nilKey.publicKey,
                             privateKey: keyGen.generate(for: "obiren@pgpro.app",
                                                         passphrase: nil).secretKey))
        
        assert(ContactListService.addContact(name: "Julia",
                            email: "julia@pgpro.app",
                            key: keyGen.generate(for: "julia@pgpro.app",
                                                 passphrase: "jules")))
        
        assert(ContactListService.addContact(name: "Mr. Charrington",
                                  email: "mr.charrington@pgpro.app",
                                  publicKey: keyGen.generate(for: "mr.charrington@pgpro.app",
                                                             passphrase: nil).publicKey,
                                  privateKey: nilKey.secretKey))
        
        assert(ContactListService.addContact(name: "Syme",
                           email: "syme@pgpro.app",
                           publicKey: keyGen.generate(for: "syme@pgpro.app",
                                                      passphrase: nil).publicKey,
                           privateKey: nilKey.secretKey))
        
        assert(ContactListService.addContact(name: "Parsons",
                              email: "parsons@pgpro.app",
                              publicKey: keyGen.generate(for: "parsons@pgpro.app",
                                                         passphrase: nil).publicKey,
                              privateKey: nilKey.secretKey))
        
        assert(ContactListService.addContact(name: "Emmanuel Goldstein",
                               email: "e.goldstein@pgpro.app",
                               publicKey: keyGen.generate(for: "e.goldstein@pgpro.app",
                                                          passphrase: nil).publicKey,
                               privateKey: nilKey.secretKey))
    }


    static func generateLargeInput() {
        for iteration in 1...25 {
            _ = ContactListService.addContact(name: String(iteration),
                                              email: "test-" + String(iteration) + "@pgpro.app",
                                              key: KeyGenerator().generate(for: "test-" + String(iteration) + "@pgpro.app", passphrase: nil))
        }
    }

}
