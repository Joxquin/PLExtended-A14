package com.google.android.apps.nexuslauncher.widgetpicker;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.widget.picker.search.SearchModeListener;
import com.android.launcher3.widget.picker.search.WidgetsSearchBar;
import com.android.launcher3.widget.picker.search.WidgetsSearchBarController;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherEditText;
import e2.h;
/* loaded from: classes.dex */
public class NexusWidgetsSearchBar extends LinearLayout implements WidgetsSearchBar {

    /* renamed from: d  reason: collision with root package name */
    public WidgetsSearchBarController f7630d;

    /* renamed from: e  reason: collision with root package name */
    public NexusLauncherEditText f7631e;

    /* renamed from: f  reason: collision with root package name */
    public ImageButton f7632f;

    public NexusWidgetsSearchBar(Context context) {
        this(context, null, 0);
    }

    @Override // com.android.launcher3.widget.picker.search.WidgetsSearchBar
    public final void clearSearchBarFocus() {
        this.f7630d.clearFocus();
    }

    @Override // com.android.launcher3.widget.picker.search.WidgetsSearchBar
    public final void initialize(PopupDataProvider popupDataProvider, SearchModeListener searchModeListener) {
        this.f7630d = new WidgetsSearchBarController(new h(getContext(), popupDataProvider), this.f7631e, this.f7632f, searchModeListener);
    }

    @Override // com.android.launcher3.widget.picker.search.WidgetsSearchBar
    public final boolean isSearchBarFocused() {
        return this.f7631e.isFocused();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7630d.onDestroy();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f7631e = (NexusLauncherEditText) findViewById(R.id.widgets_search_bar_edit_text);
        this.f7632f = (ImageButton) findViewById(R.id.widgets_search_cancel_button);
    }

    @Override // com.android.launcher3.widget.picker.search.WidgetsSearchBar
    public final void reset() {
        this.f7630d.clearSearchResult();
    }

    public NexusWidgetsSearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NexusWidgetsSearchBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
