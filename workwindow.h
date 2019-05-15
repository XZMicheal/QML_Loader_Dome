#ifndef WORKWINDOW_H
#define WORKWINDOW_H

#include <QObject>

class WorkWindow : public QObject
{
    Q_OBJECT
public:
    explicit WorkWindow(QObject *parent = nullptr);

signals:

public slots:
};

#endif // WORKWINDOW_H