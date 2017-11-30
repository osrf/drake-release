/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen
 **/

#ifndef __optitrack_optitrack_data_descriptions_t_hpp__
#define __optitrack_optitrack_data_descriptions_t_hpp__

#include <lcm/lcm_coretypes.h>

#include <vector>
#include "optitrack/optitrack_marker_set_description_t.hpp"
#include "optitrack/optitrack_rigid_body_description_t.hpp"

namespace optitrack
{

class optitrack_data_descriptions_t
{
    public:
        int32_t    num_marker_sets;

        std::vector< optitrack::optitrack_marker_set_description_t > marker_sets;

        int32_t    num_rigid_bodies;

        std::vector< optitrack::optitrack_rigid_body_description_t > rigid_bodies;

    public:
        /**
         * Encode a message into binary form.
         *
         * @param buf The output buffer.
         * @param offset Encoding starts at thie byte offset into @p buf.
         * @param maxlen Maximum number of bytes to write.  This should generally be
         *  equal to getEncodedSize().
         * @return The number of bytes encoded, or <0 on error.
         */
        inline int encode(void *buf, int offset, int maxlen) const;

        /**
         * Check how many bytes are required to encode this message.
         */
        inline int getEncodedSize() const;

        /**
         * Decode a message from binary form into this instance.
         *
         * @param buf The buffer containing the encoded message.
         * @param offset The byte offset into @p buf where the encoded message starts.
         * @param maxlen The maximum number of bytes to read while decoding.
         * @return The number of bytes decoded, or <0 if an error occured.
         */
        inline int decode(const void *buf, int offset, int maxlen);

        /**
         * Retrieve the 64-bit fingerprint identifying the structure of the message.
         * Note that the fingerprint is the same for all instances of the same
         * message type, and is a fingerprint on the message type definition, not on
         * the message contents.
         */
        inline static int64_t getHash();

        /**
         * Returns "optitrack_data_descriptions_t"
         */
        inline static const char* getTypeName();

        // LCM support functions. Users should not call these
        inline int _encodeNoHash(void *buf, int offset, int maxlen) const;
        inline int _getEncodedSizeNoHash() const;
        inline int _decodeNoHash(const void *buf, int offset, int maxlen);
        inline static uint64_t _computeHash(const __lcm_hash_ptr *p);
};

int optitrack_data_descriptions_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int optitrack_data_descriptions_t::decode(const void *buf, int offset, int maxlen)
{
    int pos = 0, thislen;

    int64_t msg_hash;
    thislen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &msg_hash, 1);
    if (thislen < 0) return thislen; else pos += thislen;
    if (msg_hash != getHash()) return -1;

    thislen = this->_decodeNoHash(buf, offset + pos, maxlen - pos);
    if (thislen < 0) return thislen; else pos += thislen;

    return pos;
}

int optitrack_data_descriptions_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t optitrack_data_descriptions_t::getHash()
{
    static int64_t hash = static_cast<int64_t>(_computeHash(NULL));
    return hash;
}

const char* optitrack_data_descriptions_t::getTypeName()
{
    return "optitrack_data_descriptions_t";
}

int optitrack_data_descriptions_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->num_marker_sets, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    for (int a0 = 0; a0 < this->num_marker_sets; a0++) {
        tlen = this->marker_sets[a0]._encodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->num_rigid_bodies, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    for (int a0 = 0; a0 < this->num_rigid_bodies; a0++) {
        tlen = this->rigid_bodies[a0]._encodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    return pos;
}

int optitrack_data_descriptions_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->num_marker_sets, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    try {
        this->marker_sets.resize(this->num_marker_sets);
    } catch (...) {
        return -1;
    }
    for (int a0 = 0; a0 < this->num_marker_sets; a0++) {
        tlen = this->marker_sets[a0]._decodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->num_rigid_bodies, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    try {
        this->rigid_bodies.resize(this->num_rigid_bodies);
    } catch (...) {
        return -1;
    }
    for (int a0 = 0; a0 < this->num_rigid_bodies; a0++) {
        tlen = this->rigid_bodies[a0]._decodeNoHash(buf, offset + pos, maxlen - pos);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    return pos;
}

int optitrack_data_descriptions_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    for (int a0 = 0; a0 < this->num_marker_sets; a0++) {
        enc_size += this->marker_sets[a0]._getEncodedSizeNoHash();
    }
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    for (int a0 = 0; a0 < this->num_rigid_bodies; a0++) {
        enc_size += this->rigid_bodies[a0]._getEncodedSizeNoHash();
    }
    return enc_size;
}

uint64_t optitrack_data_descriptions_t::_computeHash(const __lcm_hash_ptr *p)
{
    const __lcm_hash_ptr *fp;
    for(fp = p; fp != NULL; fp = fp->parent)
        if(fp->v == optitrack_data_descriptions_t::getHash)
            return 0;
    const __lcm_hash_ptr cp = { p, optitrack_data_descriptions_t::getHash };

    uint64_t hash = 0x013b816d16b8f54aLL +
         optitrack::optitrack_marker_set_description_t::_computeHash(&cp) +
         optitrack::optitrack_rigid_body_description_t::_computeHash(&cp);

    return (hash<<1) + ((hash>>63)&1);
}

}

#endif
