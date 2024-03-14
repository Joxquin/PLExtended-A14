package Y2;

import X2.C0107c;
import X2.C0132o0;
import X2.L0;
import X2.S;
import X2.r0;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import io.grpc.StatusException;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final j f2340a = new j();

    public static r0 a(Parcel parcel, C0107c c0107c) {
        int readInt = parcel.readInt();
        if (readInt == 0) {
            return new r0();
        }
        Object[] objArr = new Object[readInt * 2];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < readInt; i6++) {
            int readInt2 = parcel.readInt();
            int i7 = i4 + 4 + readInt2;
            if (i7 > 8192) {
                throw new StatusException(L0.f2132k.f("Metadata too large"));
            }
            byte[] bArr = new byte[readInt2];
            if (readInt2 > 0) {
                parcel.readByteArray(bArr);
            }
            int i8 = i6 * 2;
            objArr[i8] = bArr;
            int readInt3 = parcel.readInt();
            i4 = i7 + 4;
            if (readInt3 == -1) {
                io.grpc.binder.e eVar = (io.grpc.binder.e) c0107c.a(io.grpc.binder.internal.c.f9757r);
                if (!eVar.f9716a) {
                    throw new StatusException(L0.f2130i.f("Parcelable metadata values not allowed"));
                }
                int dataPosition = parcel.dataPosition();
                try {
                    Parcelable readParcelable = parcel.readParcelable(k.class.getClassLoader());
                    if (readParcelable == null) {
                        throw new StatusException(L0.f2134m.f("Read null parcelable in metadata"));
                    }
                    j jVar = f2340a;
                    int i9 = S.f2165a;
                    objArr[i8 + 1] = new C0132o0(jVar, readParcelable);
                    int dataPosition2 = (parcel.dataPosition() - dataPosition) + i5;
                    if (dataPosition2 > eVar.f9718c) {
                        throw new StatusException(L0.f2132k.f("Inbound Parcelables too large according to policy (see InboundParcelablePolicy)"));
                    }
                    i5 = dataPosition2;
                } catch (AndroidRuntimeException e4) {
                    throw new StatusException(L0.f2134m.e(e4).f("Failure reading parcelable in metadata"));
                }
            } else if (readInt3 < 0) {
                throw new StatusException(L0.f2134m.f("Unrecognized metadata sentinel"));
            } else {
                i4 += readInt3;
                if (i4 > 8192) {
                    throw new StatusException(L0.f2132k.f("Metadata too large"));
                }
                byte[] bArr2 = new byte[readInt3];
                if (readInt3 > 0) {
                    parcel.readByteArray(bArr2);
                }
                objArr[i8 + 1] = bArr2;
            }
        }
        int i10 = S.f2165a;
        return new r0(readInt, objArr);
    }
}
