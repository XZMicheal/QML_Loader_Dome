#ifndef LOGINWINDOW_H
#define LOGINWINDOW_H

#include <QObject>

class LoginWindow : public QObject
{
    Q_OBJECT
public:
    explicit LoginWindow(QObject *parent = nullptr);

signals:

public slots:
};

#endif // LOGINWINDOW_H