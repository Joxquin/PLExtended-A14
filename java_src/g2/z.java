package g2;

import com.google.android.gms.play.cloud.search.grpc.RequestContext$Client$ClientName;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class z implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final z f9479a = new z();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? null : RequestContext$Client$ClientName.AGA : RequestContext$Client$ClientName.PIXEL_LAUNCHER : RequestContext$Client$ClientName.UNKNOWN) != null;
    }
}
