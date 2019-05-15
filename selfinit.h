#ifndef SELFINIT_H
#define SELFINIT_H

#include <QObject>

class SelfInit : public QObject
{
    Q_OBJECT
public:
    explicit SelfInit(QObject *parent = nullptr);

signals:

public slots:
};

#endif // SELFINIT_H