//
//  ViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit
import SnapKit

//class ViewController: UIViewController {
//
//    override func loadView() {
//        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view
//
//        let imageView = UIImageView()
//        let titleLabel = UILabel()
//        let subtitleLabel = UILabel()
//        let vStack = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])
//
//        view.addSubview(vStack)
//
//        self.imageView = imageView
//        self.titleLabel = titleLabel
//        self.subtitleLabel = subtitleLabel
//        self.vStack = vStack
//    }
//
//    weak var imageView: UIImageView!
//    weak var titleLabel: UILabel! {
//        didSet {
//            titleLabel.textAlignment = .Center
//        }
//    }
//
//    weak var subtitleLabel: UILabel! {
//        didSet {
//            subtitleLabel.numberOfLines = 0
//            subtitleLabel.textAlignment = .Center
//        }
//    }
//    weak var vStack: UIStackView! {
//        didSet {
//            vStack.axis = .Vertical
//            vStack.spacing = 20
//            vStack.alignment = .Center
//            vStack.snp_makeConstraints { make in
//                make.edges.equalTo(view)
//            }
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        imageView.image = UIImage(named: "profile")
//        titleLabel.text = "Lorem ipsum"
//        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl."
//    }
//}


//scroll view example from codecamp6 (== biios 5?)
class ScrollViewController: UIViewController {

    override func loadView() {
        super.loadView() //call UIViewController.loadView() even though the docs say otherwise. Not calling super messes up some advanced transitions.

        let imageView = UIImageView()
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        let vStack = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])

        let scrollView = UIScrollView()
        scrollView.addSubview(vStack)
        view.addSubview(scrollView)

        self.imageView = imageView
        self.titleLabel = titleLabel
        self.subtitleLabel = subtitleLabel
        self.scrollView = scrollView
        self.vStack = vStack
    }

    weak var imageView: UIImageView!
    weak var titleLabel: UILabel! {
        didSet { //styling views in didSets is an old convention that we no longer use. We now do this directly in loadView, but its a matter of personal preference.
            titleLabel.textAlignment = .center
        }
    }

    weak var subtitleLabel: UILabel! {
        didSet {
            subtitleLabel.numberOfLines = 0
            subtitleLabel.textAlignment = .center
        }
    }
    weak var vStack: UIStackView! {
        didSet {
            vStack.axis = .vertical
            vStack.spacing = 20
            vStack.alignment = .center
            vStack.snp_makeConstraints { make in
                make.edges.equalTo(scrollView)
                make.width.equalTo(view)
            }
        }
    }
    weak var scrollView: UIScrollView! {
        didSet {
            scrollView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
            scrollView.delegate = self //set self as the delegate to receive delegate method calls. Must conform to UIScrollViewDelegate
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "profile")
        titleLabel.text = "Lorem ipsum"
        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl."
    }
}

//read the docs on what each method does
extension ScrollViewController: UIScrollViewDelegate {
    // scroll
    func scrollViewDidScroll(_ scrollView: UIScrollView) { }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) { }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) { }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) { }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) { }
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) { }
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) { // this one is the only interesting one :)
//        targetContentOffset.memory = scrollView.center
    }
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) { }
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool { return true }
    // zoom
    func scrollViewDidZoom(_ scrollView: UIScrollView) { }
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) { }
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) { }
}
