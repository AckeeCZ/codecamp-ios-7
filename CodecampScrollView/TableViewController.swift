//
//  TableViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit
import SVProgressHUD
//import Argo
import SDWebImage
import Alamofire
import Marshal
import Firebase
import SwiftyJSON

private let cellId = "cellId"

//class TableViewController: UIViewController {
//
//    override func loadView() {
//        super.loadView()
//
//        let tableView = UITableView(frame: .zero, style: .Plain)
//        view.addSubview(tableView)
//        self.tableView = tableView
//    }
//
//    weak var tableView: UITableView! {
//        didSet {
//            tableView.dataSource = self
//            tableView.delegate = self
//            tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellId)
//            tableView.snp_makeConstraints { make in
//                make.edges.equalTo(view)
//            }
//        }
//    }
//}
//
//extension TableViewController: UITableViewDataSource {
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 100
//    }
//
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
//        cell.imageView?.image = UIImage(named: "profile")
//        cell.textLabel?.text = "Lorem Ipsum"
//        return cell
//    }
//}

//read the docs
extension TableViewController: UITableViewDelegate {
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, accessoryTypeForRowWithIndexPath indexPath: NSIndexPath) -> UITableViewCellAccessoryType {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
//    }
//    func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
//        <#code#>
//    }
//    //No tableViewDidReload, use dispatch_async
}

//this just shows that UITableViewDelegate inherits from UIScrollViewDelegate, so redeclaring conformance to UIScrollViewDelegate here would be redundant
extension TableViewController/*: UIScrollViewDelegate*/ {
    // scroll
//    func scrollViewDidScroll(scrollView: UIScrollView) {
//        guard scrollView == tableView,
//            let indexPath = tableView.indexPathForRowAtPoint(tableView.convertPoint(view.center, fromView: view)),
//            let cell = tableView.cellForRowAtIndexPath(indexPath) else { return }
//        cell.backgroundColor = .gayColor()
//    }
//    func scrollViewWillBeginDragging(scrollView: UIScrollView) { }
//    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) { }
//    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) { }
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView) { }
//    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) { }
//    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        guard scrollView == tableView,
//            let indexPath = tableView.indexPathForRowAtPoint(targetContentOffset.memory)
//            else { return }
//        targetContentOffset.memory = tableView.rectForRowAtIndexPath(indexPath).origin //doesnt work
//    }
//    func scrollViewDidScrollToTop(scrollView: UIScrollView) { }
//    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool { return true }
//    // zoom
//    func scrollViewDidZoom(scrollView: UIScrollView) { }
//    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) { }
//    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) { }
}

//example tableView with dynamic data source
class TableViewController: UIViewController {

    //the model data, we use MVVM at ackee so we would pull this out into the ViewModel, but our example uses MVM so this pattern with reload on didSet is ok. Always make sure that you tableView is up to date with you model.
    var people: [Person] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func loadView() {
        let view = UIView(); view.backgroundColor = .white; view.isOpaque = true; self.view = view

        let tableView = UITableView(frame: .zero, style: .plain)
        view.addSubview(tableView)
        self.tableView = tableView
    }

    weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self //set datasource to provide data (numberOfRows, cells) for the tableView
            tableView.delegate = self //set delegate for additional customization, see docs for each delegate method
            tableView.register(TableViewCell.self, forCellReuseIdentifier: cellId)
            tableView.rowHeight = UITableViewAutomaticDimension //set Automatic here and set some estimatedRowHeight to enabled self-sizing cells. If you run into trouble, google "ios tableview self sizing cells"
            tableView.estimatedRowHeight = 100
            tableView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //this closure parses the received JSON and sets the result to self.people
        let reload: (AnyObject) -> () = { [weak self] json in
            //argo
//            let models: Decoded<[Person]> = decode(json) //argo
//            if let e = models.error {
//                SVProgressHUD.showError(withStatus: "\(e)")
//            }
//            self?.people = models.value ?? []
            //marshal
            do {
                let dummyKey = "dummyKey" //as far as I know, Marshal doesnt yet support decoding a topLevel JSON array. This workaround works just fine. Expect future versions of Marshal to add this feature.
                let models: [Person] = try [dummyKey: json].value(for: dummyKey)
                self?.people = models
            }catch{
                  SVProgressHUD.showError(withStatus: "\(error)")
            }
            
        }

        switch dataSource {
        case .local: //load the people.json bundled locally into the app. Parse it into a json dictionary and pass that to reload()
            if let jsonData = Bundle.main.path(forResource: "people", ofType: "json")
                .flatMap({ (try? Data(contentsOf: URL(fileURLWithPath: $0))) }),
                let json = try? JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) {
                    reload(json as AnyObject)
            }
        case .http(let baseUrl): //load the JSON from a web server. Alamofire is the most widely used networking library, see their github for advanced examples.
            Alamofire.request(baseUrl + "/people", method: .get)
                .validate()
                .responseJSON { response in
                    if let e = response.result.error {
                        SVProgressHUD.showError(withStatus: "\(e)")
                    }
                    guard let json = response.result.value else { return }
                    reload(json as AnyObject)
            }
        case .firebase: //firebase is a remote json database great for building reactive apps. This example works for now, but is hooked up to my personal firebase account, so make your own if you want to experiment. Follow tutorial on adding a GoogleService-Info.plist at firebase.google.com
            firebaseHandle = FIRDatabase.database().reference().observe(.value) { (snapshot: FIRDataSnapshot!) in
                guard let json = snapshot.value else { return }
                reload(json as AnyObject)
            }
        }
    }
//    var dataSource: DataSource = .local
//    var dataSource: DataSource = .http("http://private-8310d-petrsima.apiary-mock.com")
    var dataSource: DataSource = .firebase
    enum DataSource {
        case local
        case http(String)
        case firebase
    }

    var firebaseHandle: UInt? = nil
    deinit {
        if let handle = firebaseHandle { //make sure to always remove the observer when you are done. Here we are using the topLevel FIRDatabaseReference, but even if you were using one of its children and it got deallocated, it would continue to call the observer until you remove it!
            FIRDatabase.database().reference().removeObserver(withHandle: handle)
        }
    }
}

extension TableViewController: UITableViewDataSource { //provide data for the tableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell
        let model = people[indexPath.row] //make sure your tableView is up to date with the model (dont go out of bounds here)
        
        //use sdwebimage to download an image asynchronously
        cell.thumbnailImageView.sd_setImage(with: model.photo.flatMap { URL(string: $0) }) // must set NSAllowsArbitraryLoads in plist to download from arbitrary URL (google it)
        cell.titleLabel.text = model.name
        cell.subtitleLabel.text = model.addresses.map { $0.text }.reduce("") { $0 + ", " + $1 }
        return cell
    }
}
