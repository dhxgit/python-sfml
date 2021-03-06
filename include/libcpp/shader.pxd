#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# pySFML - Python bindings for SFML
# Copyright 2012-2013, Jonathan De Wachter <dewachter.jonathan@gmail.com>
#
# This software is released under the LGPLv3 license.
# You should have received a copy of the GNU Lesser General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.


from libcpp.sfml cimport Shader

cdef extern from "SFML/Graphics.hpp" namespace "sf::Shader":
	cdef struct CurrentTextureType:
		pass

	cdef CurrentTextureType CurrentTexture

	cdef enum Type:
		Vertex
		Fragment

	cdef bint isAvailable()
	cdef void bind(const Shader*)
