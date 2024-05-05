import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/custom_curved_edge.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(
              child: PrimaryHeaderContainer(
                child: Column(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
