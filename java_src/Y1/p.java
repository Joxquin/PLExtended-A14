package Y1;

import com.google.android.apps.nexuslauncher.search.SearchConfigProto$Source;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class p implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final p f2298a = new p();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : SearchConfigProto$Source.SHELF : SearchConfigProto$Source.ALL_APPS : SearchConfigProto$Source.HOMESCREEN : SearchConfigProto$Source.UNKNOWN) != null;
    }
}
