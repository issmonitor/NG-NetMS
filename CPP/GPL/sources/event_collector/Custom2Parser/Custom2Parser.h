#pragma once

#include "IParser.h"
#include <string>

using namespace std;

class Custom2Parser: public IParser
{
    public:
		Custom2Parser( );
        virtual ~Custom2Parser();
        bool Parse( string Message, bool HasSourceIp, string SourceIP );
        bool ProcessEndOfData( );
        void SourceAttached( string IpAddress );
        void SourceDetached( string IpAddress );
        void RegisterListener( ParserListener &Listener );
        void UnregisterListener( ParserListener &Listener );

    private:
        Notifier<ParserListener, Event> m_Notifier;
};
