import 'package:flutter/material.dart';

class SwitchesDemoScreen extends StatefulWidget {
  const SwitchesDemoScreen({Key? key}) : super(key: key);

  @override
  _SwitchesDemoScreenState createState() => _SwitchesDemoScreenState();
}

enum SkillLevel { junior, middle, senior }

class _SwitchesDemoScreenState extends State<SwitchesDemoScreen> {
  bool _checked = false;
  bool _confirmAgreement = true;
  SkillLevel? _skillLevel = SkillLevel.junior;

  void _onCheckedChange(bool? val) {
    setState(() {
      _checked = !_checked;
    });
  }

  void _onSkillLevelChanged(SkillLevel? value) {
    setState(() {
      _skillLevel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Переключатели'),
              centerTitle: true,
            ),
            body: Center(
                child: Column(children: [
                  Row(
                    children: [
                      Checkbox(value: _checked, onChanged: _onCheckedChange),
                      const Text('Выбор'),
                    ],
                  ),
                  CheckboxListTile(
                      title: const Text('Принять условия соглашения'),
                      value: _confirmAgreement, onChanged: (val) {
                    setState(() {
                      _confirmAgreement = !_confirmAgreement;
                    });
                  }),
                  Row(
                    children: [
                      Switch(value: _checked, onChanged: _onCheckedChange),
                      const Text('Включить')
                    ],
                  ),
                  SwitchListTile(
                      title: const Text('Включить'),
                      value: _checked,
                      onChanged: _onCheckedChange
                  ),
                  const Text('Уровень навыков: '),
                  RadioListTile<SkillLevel>(
                    title: const Text('junior'),
                    value: SkillLevel.junior,
                    groupValue: _skillLevel,
                    onChanged: _onSkillLevelChanged,
                  ),
                  RadioListTile<SkillLevel>(
                    title: Text('middle'),
                    value: SkillLevel.middle,
                    groupValue: _skillLevel,
                    onChanged: _onSkillLevelChanged,
                  ),
                  RadioListTile<SkillLevel>(
                    title: const Text('senior'),
                    value: SkillLevel.senior,
                    groupValue: _skillLevel,
                    onChanged: _onSkillLevelChanged,
                  ),
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('return',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))))
                ]))));
  }
}

