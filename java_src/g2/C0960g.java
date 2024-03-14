package g2;

import com.google.android.gms.play.cloud.search.grpc.EntryPoint;
import com.google.protobuf.M;
/* renamed from: g2.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0960g implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final C0960g f9474a = new C0960g();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? null : EntryPoint.ENTRY_POINT_ALL_APPS : EntryPoint.ENTRY_POINT_HOMESCREEN_SEARCH_BOX : EntryPoint.ENTRY_POINT_UNKNOWN) != null;
    }
}
