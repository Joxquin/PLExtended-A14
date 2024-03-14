package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SearchTextHeaderRow extends com.android.systemui.animation.view.a implements A2, BubbleTextHolder {

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f6857n = 0;

    /* renamed from: e  reason: collision with root package name */
    public TextView f6858e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f6859f;

    /* renamed from: g  reason: collision with root package name */
    public TextView f6860g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f6861h;

    /* renamed from: i  reason: collision with root package name */
    public SearchResultIcon f6862i;

    /* renamed from: j  reason: collision with root package name */
    public ImageView f6863j;

    /* renamed from: k  reason: collision with root package name */
    public Drawable f6864k;

    /* renamed from: l  reason: collision with root package name */
    public SearchResultIcon f6865l;

    /* renamed from: m  reason: collision with root package name */
    public FrameLayout f6866m;

    public SearchTextHeaderRow(Context context) {
        this(context, null, 0);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        SearchResultIcon searchResultIcon = this.f6865l;
        SearchTarget searchTarget = c0653h1.f7080a;
        searchResultIcon.o(searchTarget);
        this.f6865l.setVisibility(8);
        this.f6860g.setVisibility(8);
        this.f6859f.setVisibility(8);
        if (Process.myUserHandle().equals(searchTarget.getUserHandle())) {
            this.f6861h.setVisibility(8);
        } else {
            this.f6861h.setVisibility(0);
        }
        k(null);
        if (searchTarget.getSearchAction() != null) {
            k(searchTarget.getSearchAction().getSubtitle());
        }
        Bundle extras = searchTarget.getExtras();
        if (extras != null && extras.getString("title_overwrite") != null) {
            this.f6858e.setText(extras.getString("title_overwrite"));
        }
        this.f6863j.setVisibility(8);
        this.f6862i.reset();
        this.f6866m.setVisibility(8);
        if (extras == null || !extras.getBoolean("is_non_tappable")) {
            setOnClickListener(this.f6865l);
            setImportantForAccessibility(1);
            ArrayList arrayList = (ArrayList) c0653h1.f7081b;
            if (arrayList.size() > 0) {
                this.f6862i.o((SearchTarget) arrayList.get(0));
                this.f6866m.setVisibility(0);
            } else {
                this.f6863j.setVisibility(0);
            }
            if (FeatureFlags.ENABLE_ICON_IN_TEXT_HEADER.get()) {
                this.f6865l.setVisibility(0);
            }
        } else {
            setOnClickListener(null);
            setImportantForAccessibility(2);
        }
        setBackground(this.f6864k);
    }

    @Override // com.android.launcher3.views.BubbleTextHolder
    public final BubbleTextView getBubbleText() {
        return this.f6865l;
    }

    public final void k(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence) || D2.h(this.f6865l.f6744r, 1)) {
            this.f6860g.setText((CharSequence) null);
            this.f6860g.setVisibility(8);
            this.f6859f.setVisibility(8);
            return;
        }
        this.f6860g.setText(charSequence);
        this.f6860g.setVisibility(0);
        this.f6859f.setVisibility(0);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) findViewById(R.id.open_button);
        this.f6863j = imageView;
        imageView.setImportantForAccessibility(2);
        this.f6866m = (FrameLayout) findViewById(R.id.action_button_container);
        this.f6862i = (SearchResultIcon) findViewById(R.id.action_button);
        SearchResultIcon searchResultIcon = (SearchResultIcon) findViewById(R.id.icon);
        this.f6865l = searchResultIcon;
        searchResultIcon.setImportantForAccessibility(2);
        SearchResultIcon searchResultIcon2 = this.f6865l;
        searchResultIcon2.f6732f = new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.E2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SearchTextHeaderRow searchTextHeaderRow = SearchTextHeaderRow.this;
                ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                int i4 = SearchTextHeaderRow.f6857n;
                searchTextHeaderRow.setTag(itemInfoWithIcon);
                CharSequence charSequence = itemInfoWithIcon.title;
                if (charSequence != null) {
                    searchTextHeaderRow.f6858e.setText(Html.fromHtml(charSequence.toString()));
                }
                searchTextHeaderRow.f6858e.setContentDescription(itemInfoWithIcon.contentDescription != null ? searchTextHeaderRow.getResources().getString(R.string.open_app, itemInfoWithIcon.contentDescription) : searchTextHeaderRow.getResources().getString(R.string.open_app, itemInfoWithIcon.title));
            }
        };
        setOnClickListener(searchResultIcon2);
        this.f6858e = (TextView) findViewById(R.id.title);
        this.f6859f = (TextView) findViewById(R.id.delimiter);
        TextView textView = (TextView) findViewById(R.id.subtitle);
        this.f6860g = textView;
        textView.setVisibility(8);
        this.f6861h = (ImageView) findViewById(R.id.work_badge);
        this.f6860g.setVisibility(8);
        this.f6864k = getResources().getDrawable(R.drawable.bg_transparent);
    }

    public SearchTextHeaderRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchTextHeaderRow(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
