//
//  Constants.swift
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

enum Constants {
    
    /* Global PGPro Constants */
    public enum PGPro {
        static var appID = "1481696997"
        static var version: String {
            let vrsn = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
            if let vrsn = vrsn as? String {
                return vrsn
            } else {
                return ""
            }
        }
        
    }

    /* Notification Names */
    public enum NotificationNames {
        
        static var contactListChange = Notification.Name(rawValue: "pgpro.contactListChange")
        static var publicKeySelectionChange = Notification.Name(rawValue: "pgpro.publicKeySelectionChange")
        static var privateKeySelectionChange = Notification.Name(rawValue: "pgpro.privateKeySelectionChange")
        
    }
}
