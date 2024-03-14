package kotlin.collections.builders;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class SerializedCollection implements Externalizable {
    private static final long serialVersionUID = 0;
    private Collection collection;
    private final int tag;

    public SerializedCollection() {
        this(0, EmptyList.f11226d);
    }

    private final Object readResolve() {
        return this.collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput input) {
        ListBuilder listBuilder;
        h.e(input, "input");
        byte readByte = input.readByte();
        int i4 = readByte & 1;
        if ((readByte & (-2)) != 0) {
            throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte) + '.');
        }
        int readInt = input.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        int i5 = 0;
        if (i4 == 0) {
            ListBuilder listBuilder2 = new ListBuilder(readInt);
            while (i5 < readInt) {
                listBuilder2.add(input.readObject());
                i5++;
            }
            listBuilder2.o();
            listBuilder = listBuilder2;
        } else if (i4 != 1) {
            throw new InvalidObjectException("Unsupported collection type tag: " + i4 + '.');
        } else {
            SetBuilder setBuilder = new SetBuilder(new MapBuilder(readInt));
            while (i5 < readInt) {
                setBuilder.add(input.readObject());
                i5++;
            }
            setBuilder.i();
            listBuilder = setBuilder;
        }
        this.collection = listBuilder;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput output) {
        h.e(output, "output");
        output.writeByte(this.tag);
        output.writeInt(this.collection.size());
        for (Object obj : this.collection) {
            output.writeObject(obj);
        }
    }

    public SerializedCollection(int i4, Collection collection) {
        h.e(collection, "collection");
        this.collection = collection;
        this.tag = i4;
    }
}
