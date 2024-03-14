package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchAction;
import android.app.search.SearchTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import z0.C1494b;
/* loaded from: classes.dex */
public class TallCardWithImageNoIconRow extends com.android.systemui.animation.view.a implements A2, BubbleTextHolder {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f6880m = 0;

    /* renamed from: e  reason: collision with root package name */
    public TextView f6881e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f6882f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f6883g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f6884h;

    /* renamed from: i  reason: collision with root package name */
    public ViewGroup f6885i;

    /* renamed from: j  reason: collision with root package name */
    public C0695s0 f6886j;

    /* renamed from: k  reason: collision with root package name */
    public C0719y0 f6887k;

    /* renamed from: l  reason: collision with root package name */
    public SearchResultIcon f6888l;

    public TallCardWithImageNoIconRow(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        SearchResultIcon searchResultIcon = this.f6888l;
        SearchTarget searchTarget = c0653h1.f7080a;
        searchResultIcon.o(searchTarget);
        this.f6888l.setVisibility(8);
        this.f6887k = C0719y0.f(getContext());
        List list = c0653h1.f7081b;
        C0695s0 c0695s0 = this.f6886j;
        ViewGroup viewGroup = null;
        if (c0695s0 != null) {
            c0695s0.close();
            this.f6886j = null;
        }
        final Bundle extras = searchTarget.getExtras();
        this.f6881e.setText(extras.getString("tall_card_header"));
        this.f6881e.setContentDescription(extras.getString("tall_card_header_content_description_override"));
        final String string = extras.getString("bitmap_url");
        ArrayList arrayList = (ArrayList) list;
        if (arrayList.isEmpty()) {
            this.f6885i.setVisibility(8);
        } else {
            this.f6885i.setVisibility(0);
            LinearLayout linearLayout = (LinearLayout) this.f6885i.findViewById(R.id.action_list);
            LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
            this.f6885i.scrollTo(0, 0);
            linearLayout.removeAllViews();
            int i4 = 0;
            while (i4 < arrayList.size()) {
                SearchTarget searchTarget2 = (SearchTarget) arrayList.get(i4);
                View inflate = layoutInflater.inflate(R.layout.tall_card_action_button, viewGroup);
                ((TextView) inflate.findViewById(R.id.action_button_text)).setText(searchTarget2.getSearchAction().getTitle());
                SearchResultIcon searchResultIcon2 = (SearchResultIcon) inflate.findViewById(R.id.button_icon);
                searchResultIcon2.setImportantForAccessibility(2);
                searchResultIcon2.f6732f = new J2(inflate, 1);
                inflate.setOnClickListener(searchResultIcon2);
                searchResultIcon2.o(searchTarget2);
                searchResultIcon2.setVisibility(8);
                linearLayout.addView(inflate);
                if (i4 > 0) {
                    int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.tall_card_button_padding_end);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) inflate.getLayoutParams();
                    marginLayoutParams.setMarginStart(dimensionPixelSize);
                    inflate.setLayoutParams(marginLayoutParams);
                }
                i4++;
                viewGroup = null;
            }
        }
        SearchAction searchAction = searchTarget.getSearchAction();
        if (searchAction == null) {
            return;
        }
        CharSequence title = searchAction.getTitle();
        CharSequence subtitle = searchAction.getSubtitle();
        if (TextUtils.isEmpty(title)) {
            this.f6882f.setVisibility(8);
        } else {
            this.f6882f.setVisibility(0);
            this.f6882f.setText(title);
        }
        if (TextUtils.isEmpty(subtitle)) {
            this.f6883g.setVisibility(8);
        } else {
            this.f6883g.setVisibility(0);
            this.f6883g.setText(subtitle);
            this.f6883g.setContentDescription(C1494b.a(searchAction).getString("subtitle_content_description_override"));
        }
        this.f6884h.setVisibility(4);
        this.f6884h.setContentDescription(null);
        if (string != null && !string.isEmpty()) {
            this.f6886j = this.f6887k.h("webimage_".concat(string), C0719y0.g().getHandler(), new Supplier() { // from class: com.google.android.apps.nexuslauncher.allapps.K2
                @Override // java.util.function.Supplier
                public final Object get() {
                    Bitmap l4 = TallCardWithImageNoIconRow.this.f6887k.l(string);
                    return l4 == null ? BitmapInfo.LOW_RES_INFO : new BitmapInfo(l4, 0);
                }
            }, new InterfaceC0703u0() { // from class: com.google.android.apps.nexuslauncher.allapps.L2
                @Override // com.google.android.apps.nexuslauncher.allapps.InterfaceC0703u0
                public final void a(BitmapInfo bitmapInfo) {
                    int i5 = TallCardWithImageNoIconRow.f6880m;
                    TallCardWithImageNoIconRow tallCardWithImageNoIconRow = TallCardWithImageNoIconRow.this;
                    tallCardWithImageNoIconRow.getClass();
                    if (bitmapInfo == BitmapInfo.LOW_RES_INFO) {
                        return;
                    }
                    tallCardWithImageNoIconRow.f6884h.setVisibility(0);
                    tallCardWithImageNoIconRow.f6884h.setImageBitmap(bitmapInfo.icon);
                    tallCardWithImageNoIconRow.f6884h.setContentDescription(extras.getString("tall_card_image_description"));
                }
            });
        }
        h(c0653h1.f7083d);
    }

    @Override // com.android.launcher3.views.BubbleTextHolder
    public final BubbleTextView getBubbleText() {
        return this.f6888l;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6884h = (ImageView) findViewById(R.id.image);
        this.f6881e = (TextView) findViewById(R.id.header);
        this.f6882f = (TextView) findViewById(R.id.title);
        this.f6883g = (TextView) findViewById(R.id.subtitle);
        SearchResultIcon searchResultIcon = (SearchResultIcon) findViewById(R.id.icon);
        this.f6888l = searchResultIcon;
        searchResultIcon.setImportantForAccessibility(2);
        SearchResultIcon searchResultIcon2 = this.f6888l;
        searchResultIcon2.f6732f = new J2(this, 0);
        setOnClickListener(searchResultIcon2);
        this.f6885i = (ViewGroup) findViewById(R.id.action_list_container);
    }

    public TallCardWithImageNoIconRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TallCardWithImageNoIconRow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
