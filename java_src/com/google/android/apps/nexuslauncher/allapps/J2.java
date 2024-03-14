package com.google.android.apps.nexuslauncher.allapps;

import android.text.Html;
import android.view.View;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class J2 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6603a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f6604b;

    public /* synthetic */ J2(View view, int i4) {
        this.f6603a = i4;
        this.f6604b = view;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6603a) {
            case 0:
                TallCardWithImageNoIconRow tallCardWithImageNoIconRow = (TallCardWithImageNoIconRow) this.f6604b;
                ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                int i4 = TallCardWithImageNoIconRow.f6880m;
                tallCardWithImageNoIconRow.setTag(itemInfoWithIcon);
                CharSequence charSequence = itemInfoWithIcon.title;
                if (charSequence != null) {
                    tallCardWithImageNoIconRow.f6882f.setText(Html.fromHtml(charSequence.toString()));
                    tallCardWithImageNoIconRow.f6882f.setContentDescription(itemInfoWithIcon.contentDescription);
                    return;
                }
                return;
            default:
                int i5 = TallCardWithImageNoIconRow.f6880m;
                this.f6604b.setTag((ItemInfoWithIcon) obj);
                return;
        }
    }
}
