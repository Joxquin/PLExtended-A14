package kotlin.collections.builders;

import j.C1080K;
import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import kotlin.collections.x;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
final class SerializedMap implements Externalizable {
    private static final long serialVersionUID = 0;
    private Map map;

    public SerializedMap(Map map) {
        h.e(map, "map");
        this.map = map;
    }

    private final Object readResolve() {
        return this.map;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput input) {
        h.e(input, "input");
        byte readByte = input.readByte();
        if (readByte != 0) {
            throw new InvalidObjectException(C1080K.a("Unsupported flags value: ", readByte));
        }
        int readInt = input.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        MapBuilder mapBuilder = new MapBuilder(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            mapBuilder.put(input.readObject(), input.readObject());
        }
        mapBuilder.h();
        this.map = mapBuilder;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput output) {
        h.e(output, "output");
        output.writeByte(0);
        output.writeInt(this.map.size());
        for (Map.Entry entry : this.map.entrySet()) {
            output.writeObject(entry.getKey());
            output.writeObject(entry.getValue());
        }
    }

    public SerializedMap() {
        this(x.c());
    }
}
