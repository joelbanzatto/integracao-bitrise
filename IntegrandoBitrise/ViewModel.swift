//
//  ViewModel.swift
//  IntegrandoBitrise
//
//  Created by Joel Banzatto on 03/08/21.
//

import Foundation

public class ViewModel {
    
    public func getCategoriesList() -> [String] {
        return [
            "Action",
            "Comedy",
            "Drama",
            "Fantasy",
            "Horror",
            "Mystery",
            "Romance",
            "Thriller",
            "Western"
        ]
    }
    
    public func getFilteredCategoryList(by keyword: String) -> [String]? {
        return getCategoriesList().filter { category in
            return category.lowercased().hasPrefix(keyword.lowercased())
        }
    }
    
}
