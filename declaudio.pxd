# -*- python -*-
# -*- coding: utf-8 -*-

# Copyright 2011 Bastien Léonard. All rights reserved.

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:

#    1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.

#    2. Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.

# THIS SOFTWARE IS PROVIDED BY BASTIEN LÉONARD ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BASTIEN LÉONARD OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
# USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
# OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.


cimport decl


cdef extern from "SFML/Audio.hpp" namespace "sf::SoundSource":
    cdef cppclass Status

    int Stopped
    int Paused
    int Playing


cdef extern from "SFML/Audio.hpp" namespace "sf":
    cdef cppclass SoundBuffer:
        SoundBuffer()
        unsigned int GetChannelsCount()
        float GetDuration()
        decl.Int16* GetSamples()
        unsigned int GetSampleRate()
        size_t GetSamplesCount()
        bint LoadFromFile(char*)
        bint LoadFromMemory(void*, size_t)
        bint LoadFromSamples(decl.Int16*, size_t, unsigned int, unsigned int)
        bint SaveToFile(char*)

    cdef cppclass Sound:
        Sound()
        Sound(SoundBuffer&)
        Sound(SoundBuffer&, bint)
        Sound(SoundBuffer&, bint, float)
        Sound(SoundBuffer&, bint, float, float)
        Sound(SoundBuffer&, bint, float, float, decl.Vector3f&)
        float GetAttenuation()
        SoundBuffer* GetBuffer()
        bint GetLoop()
        float GetMinDistance()
        float GetPitch()
        float GetPlayingOffset()
        decl.Vector3f GetPosition()
        float GetVolume()
        Status GetStatus()
        bint IsRelativeToListener()
        void Pause()
        void Play()
        void SetAttenuation(float)
        void SetBuffer(SoundBuffer&)
        void SetLoop(bint)
        void SetMinDistance(float)
        void SetPitch(float)
        void SetPlayingOffset(float)
        void SetPosition(float, float, float)
        void SetPosition(decl.Vector3f&)
        void SetRelativeToListener(bint)
        void SetVolume(float)
        void Stop()
