//
//  fmdb.swift
//  FMDB File
//
//  Created by R93 on 04/04/23.
//

import Foundation

class fmdb
{
    static var file : FMDatabase!
   
    static func createFile()
    {
        var a = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        a.appendPathComponent("FMDB File.db")
        file = FMDatabase(url: a)
        file.open()
        print(a.path)
        createTable()
        
    }
    
    static func createTable()
    {
        let  query = "Create Table if not exists Students (id integer,name text)"
        try? file.executeUpdate(query, values: nil)
        print("Create Table")
        
    }
    
    static func addData(id:Int,name:String)
    {
        let query = "insert into Students values (\(id),'\(name)')"
        try? file.executeUpdate(query, values: [id,name])
        print("Add Data")
        
    }
    
    static func getData()
    {
        
    }
    
    static func deleteData(id:Int,name:String)
    {
        let query = "DELETE FROM Student WHERE id = \(id)"
        try? file.executeUpdate(query, values:nil)
        print("Delete Data")
        
    }
}
