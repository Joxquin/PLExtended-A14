package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$TruncateType;
/* renamed from: f2.n0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0910n0 implements com.google.protobuf.M {

    /* renamed from: a  reason: collision with root package name */
    public static final C0910n0 f9344a = new C0910n0();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : OneSearchSuggestion$TruncateType.START : OneSearchSuggestion$TruncateType.MIDDLE : OneSearchSuggestion$TruncateType.END : OneSearchSuggestion$TruncateType.UNDEFINED) != null;
    }
}
