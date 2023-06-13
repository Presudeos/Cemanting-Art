import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cemanting_art_application/models/shoes.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Shoes shoes;
  DetailAppBar (this.shoes);


  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
final CarouselController _controller = CarouselController();
int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            Container(
              child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: 500,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  }
                ),
                items: widget.shoes.detailUrl.map((e) => Builder(
                  builder: (context) => Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('$e'),
                        fit: BoxFit.fitHeight,
                        ),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                )).toList(),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 180,
              child: Row(
                children: widget.shoes.detailUrl.asMap().entries.map(
                  (entry) => GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(
                          _currentPage == entry.key ? 0.9 : 0.4
                        )
                      ),
                    ),
                  )
                ).toList(),
              )
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 25
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, left: 3, right: 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.65)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9, top: 30, bottom: 19),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }
}