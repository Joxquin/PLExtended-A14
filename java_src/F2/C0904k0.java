package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$LayoutType;
/* renamed from: f2.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0904k0 implements com.google.protobuf.M {

    /* renamed from: a  reason: collision with root package name */
    public static final C0904k0 f9341a = new C0904k0();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : OneSearchSuggestion$LayoutType.TALL_CARD_WITH_IMAGE_NO_ICON : OneSearchSuggestion$LayoutType.EXTRA_TALL_ICON_ROW : OneSearchSuggestion$LayoutType.HORIZONTAL_MEDIUM_TEXT : OneSearchSuggestion$LayoutType.SMALL_ICON_HORIZONTAL_TEXT) != null;
    }
}
