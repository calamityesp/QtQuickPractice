#include "appwrapper.h"

AppWrapper::AppWrapper(QObject *parent)
    : QObject{parent}
{

}

void AppWrapper::fetchPosts(int number)
{

}

void AppWrapper::removeLast()
{

}

QStringList AppWrapper::jokes() const
{
    return mJokes;
}
