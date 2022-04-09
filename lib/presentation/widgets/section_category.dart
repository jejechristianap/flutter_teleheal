import 'package:flutter/material.dart';
import 'package:flutter_teleheal/data/repository.dart';
import 'package:flutter_teleheal/domain/section.dart';

class SectionCategory extends StatelessWidget {
  const SectionCategory({
    Key? key,
    required this.sectionTitle,
    required this.section,
    required this.onPressed,
  }) : super(key: key);

  final String sectionTitle;
  final Section section;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  sectionTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Lihat Semua',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < Repository().section.length; i++)
                  Container(
                    height: 60,
                    padding: i == 0
                        ? const EdgeInsets.only(left: 18.0, right: 6.0)
                        : const EdgeInsets.only(left: 6.0, right: 6.0),
                    child: ElevatedButton(
                      onPressed: () => onPressed(i),
                      child: Text(
                        Repository().section[i],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.builder(
          itemCount: section.hospitals?.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, pos) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.amber,
                  child: const Center(child: Text('pic')),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          section.hospitals?[pos].namaRs ?? 'RS',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          section.hospitals?[pos].alamat ?? 'Alamat',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'lihat detail',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.cyan),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
