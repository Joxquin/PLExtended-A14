package com.google.android.apps.nexuslauncher.allapps;

import android.text.Html;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class A1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6506a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SearchResultBigIconRow f6507b;

    public /* synthetic */ A1(SearchResultBigIconRow searchResultBigIconRow, int i4) {
        this.f6506a = i4;
        this.f6507b = searchResultBigIconRow;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6506a) {
            case 0:
                SearchResultBigIconRow searchResultBigIconRow = this.f6507b;
                ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                int i4 = SearchResultBigIconRow.f6708r;
                searchResultBigIconRow.setTag(itemInfoWithIcon);
                CharSequence charSequence = itemInfoWithIcon.title;
                if (charSequence != null) {
                    searchResultBigIconRow.f6714j.setText(Html.fromHtml(charSequence.toString()));
                    return;
                }
                return;
            default:
                this.f6507b.k((CharSequence) obj);
                return;
        }
    }
}
