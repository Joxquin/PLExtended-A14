package com.google.android.apps.nexuslauncher.search;

import Y1.g;
import Y1.r;
import Y1.u;
import Y1.y;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannedString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.SurroundingText;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.google.android.apps.nexuslauncher.NexusLauncherEditText;
import com.google.android.apps.nexuslauncher.allapps.C0696s1;
import com.google.android.apps.nexuslauncher.allapps.C0719y0;
import com.google.android.apps.nexuslauncher.allapps.W0;
import com.google.android.apps.nexuslauncher.allapps.X0;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import java.util.ArrayList;
import t.C1395a;
/* loaded from: classes.dex */
public class SearchEditText extends NexusLauncherEditText implements View.OnLongClickListener {

    /* renamed from: y  reason: collision with root package name */
    public static final boolean f7565y;

    /* renamed from: e  reason: collision with root package name */
    public SearchAlgorithm f7566e;

    /* renamed from: f  reason: collision with root package name */
    public SearchCallback f7567f;

    /* renamed from: g  reason: collision with root package name */
    public y f7568g;

    /* renamed from: h  reason: collision with root package name */
    public TypeAheadSearchInputView f7569h;

    /* renamed from: i  reason: collision with root package name */
    public String f7570i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f7571j;

    /* renamed from: k  reason: collision with root package name */
    public SurroundingText f7572k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f7573l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f7574m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f7575n;

    /* renamed from: o  reason: collision with root package name */
    public final g f7576o;

    /* renamed from: p  reason: collision with root package name */
    public final X0 f7577p;

    /* renamed from: q  reason: collision with root package name */
    public InputMethodManager f7578q;

    /* renamed from: r  reason: collision with root package name */
    public String f7579r;

    /* renamed from: s  reason: collision with root package name */
    public String f7580s;

    /* renamed from: t  reason: collision with root package name */
    public int f7581t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f7582u;

    /* renamed from: v  reason: collision with root package name */
    public ActivityAllAppsContainerView f7583v;

    /* renamed from: w  reason: collision with root package name */
    public C0719y0 f7584w;

    /* renamed from: x  reason: collision with root package name */
    public final C0696s1 f7585x;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f7565y = Log.isLoggable("QuickLaunchV2", 2);
    }

    public SearchEditText(Context context) {
        this(context, null);
    }

    public static void a(SearchEditText searchEditText) {
        String obj = searchEditText.f7574m ? searchEditText.f7576o.f2297g : searchEditText.getText().toString();
        if (!searchEditText.f7583v.isInAllApps() || TextUtils.isEmpty(obj)) {
            return;
        }
        searchEditText.c();
        if (searchEditText.f7574m) {
            Log.d("SearchEditText", "Call setText in onAppsUpdated for QL v2");
            searchEditText.setText(obj);
            searchEditText.setSelection(obj.length());
        }
        searchEditText.e(obj);
    }

    public final void b(boolean z4) {
        if (this.f7569h.a()) {
            TypeAheadSearchInputView typeAheadSearchInputView = this.f7569h;
            String spannedString = ((SpannedString) typeAheadSearchInputView.f7597o.getText()).toString();
            String substring = spannedString.substring(0, spannedString.length() - (typeAheadSearchInputView.f7598p ? typeAheadSearchInputView.f7592j : typeAheadSearchInputView.f7591i).length());
            setText(substring);
            int length = substring.length();
            if (z4) {
                setSelection(0, length);
            } else {
                setSelection(length, length);
            }
            k("Hide_Accept");
        }
    }

    public final void c() {
        this.f7569h.f7597o.setVisibility(4);
        this.f7570i = null;
        this.f7582u = false;
    }

    public final void clearSearchResult() {
        ActivityAllAppsContainerView activityAllAppsContainerView;
        if (getParent() == null || (activityAllAppsContainerView = this.f7583v) == null) {
            return;
        }
        activityAllAppsContainerView.onClearSearchResult();
        c();
        this.f7576o.f2297g = null;
    }

    public final void d() {
        if (this.f7574m) {
            e(getText().toString());
        }
    }

    public final void e(String str) {
        if (str.isEmpty()) {
            this.f7566e.cancel(true);
            this.f7567f.clearSearchResult();
            return;
        }
        String[] extractTextConversions = AllAppsSearchBarController.extractTextConversions(str);
        this.f7566e.cancel(false);
        this.f7566e.doSearch(str, extractTextConversions, this.f7567f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0035, code lost:
        if ("qs_tile".equals(((com.google.android.apps.nexuslauncher.allapps.C0653h1) r0).f7080a.getLayoutType()) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r4 = this;
            java.lang.String r0 = "Hide_Dismiss"
            r4.k(r0)
            Y1.g r0 = r4.f7576o
            r1 = 1
            r0.f2291a = r1
            com.android.launcher3.allapps.ActivityAllAppsContainerView r0 = r4.f7583v
            com.android.launcher3.allapps.AlphabeticalAppsList r0 = r0.getSearchResultList()
            java.util.List r0 = r0.getAdapterItems()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            boolean r2 = r0.isEmpty()
            r3 = 0
            if (r2 != 0) goto L38
            java.lang.Object r0 = r0.get(r3)
            com.android.launcher3.allapps.BaseAllAppsAdapter$AdapterItem r0 = (com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem) r0
            boolean r2 = r0 instanceof com.google.android.apps.nexuslauncher.allapps.C0653h1
            if (r2 == 0) goto L38
            com.google.android.apps.nexuslauncher.allapps.h1 r0 = (com.google.android.apps.nexuslauncher.allapps.C0653h1) r0
            android.app.search.SearchTarget r0 = r0.f7080a
            java.lang.String r0 = r0.getLayoutType()
            java.lang.String r2 = "qs_tile"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L38
            goto L39
        L38:
            r1 = r3
        L39:
            com.android.launcher3.allapps.ActivityAllAppsContainerView r0 = r4.f7583v
            com.android.launcher3.allapps.AllAppsRecyclerView r0 = r0.getActiveRecyclerView()
            androidx.recyclerview.widget.Z r0 = r0.getAdapter()
            if (r0 == 0) goto L54
            if (r1 != 0) goto L54
            com.android.launcher3.allapps.ActivityAllAppsContainerView r0 = r4.f7583v
            com.android.launcher3.allapps.AllAppsRecyclerView r0 = r0.getActiveRecyclerView()
            androidx.recyclerview.widget.Z r0 = r0.getAdapter()
            r0.notifyItemRangeChanged()
        L54:
            r4.g()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.search.SearchEditText.f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            r5 = this;
            boolean r0 = r5.f7574m
            r1 = 1
            r2 = 0
            if (r0 != 0) goto Le
            com.google.android.apps.nexuslauncher.allapps.y0 r0 = r5.f7584w
            boolean r0 = r0.x()
            if (r0 == 0) goto L14
        Le:
            boolean r0 = r5.f7575n
            if (r0 == 0) goto L14
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            if (r0 != 0) goto L18
            return
        L18:
            boolean r0 = r5.j()
            if (r0 != 0) goto L5d
            com.android.launcher3.allapps.ActivityAllAppsContainerView r0 = r5.f7583v
            com.android.launcher3.allapps.AlphabeticalAppsList r0 = r0.getSearchResultList()
            java.util.List r0 = r0.getAdapterItems()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto L5d
            java.lang.Object r3 = r0.get(r2)
            com.android.launcher3.allapps.BaseAllAppsAdapter$AdapterItem r3 = (com.android.launcher3.allapps.BaseAllAppsAdapter.AdapterItem) r3
            boolean r4 = r3 instanceof com.google.android.apps.nexuslauncher.allapps.C0653h1
            if (r4 == 0) goto L48
            com.google.android.apps.nexuslauncher.allapps.h1 r3 = (com.google.android.apps.nexuslauncher.allapps.C0653h1) r3
            android.app.search.SearchTarget r3 = r3.f7080a
            int r3 = r3.getResultType()
            r4 = 131072(0x20000, float:1.83671E-40)
            if (r3 == r4) goto L48
            r3 = r1
            goto L49
        L48:
            r3 = r2
        L49:
            if (r3 == 0) goto L5d
            java.util.stream.Stream r0 = r0.stream()
            Y1.s r3 = new Y1.s
            r3.<init>()
            boolean r0 = r0.noneMatch(r3)
            if (r0 == 0) goto L5b
            goto L5d
        L5b:
            r0 = r2
            goto L5e
        L5d:
            r0 = r1
        L5e:
            if (r0 != 0) goto L66
            boolean r0 = r5.j()
            if (r0 == 0) goto L71
        L66:
            android.text.Editable r0 = r5.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L71
            goto L72
        L71:
            r1 = r2
        L72:
            boolean r0 = r5.f7571j
            if (r0 == r1) goto L90
            android.view.inputmethod.InputMethodManager r0 = r5.f7578q
            if (r0 == 0) goto L90
            r5.f7571j = r1
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            if (r1 == 0) goto L85
            r2 = 3
            goto L86
        L85:
            r2 = 2
        L86:
            java.lang.String r3 = "IME_ACTION"
            r0.putInt(r3, r2)
            android.view.inputmethod.InputMethodManager r2 = r5.f7578q
            r2.sendAppPrivateCommand(r5, r3, r0)
        L90:
            if (r1 == 0) goto L95
            r5.c()
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.search.SearchEditText.g():void");
    }

    public boolean getIsImeIconSearch() {
        return this.f7571j;
    }

    public String getPrefixSuggestedText() {
        return this.f7570i;
    }

    public g getQuickLaunchInputController() {
        return this.f7576o;
    }

    public TypeAheadSearchInputView getTypeAheadSearchInputView() {
        return this.f7569h;
    }

    public final void h(String str, String str2) {
        if (str2 == null || str == null || !this.f7574m) {
            return;
        }
        StringBuilder a4 = C1395a.a(str);
        a4.append(str2.substring(str.length()));
        String sb = a4.toString();
        this.f7568g.beginBatchEdit();
        this.f7568g.setComposingRegion(0, 1024);
        this.f7568g.setComposingText(sb, 1);
        this.f7568g.setSelection(str.length(), length());
        this.f7568g.endBatchEdit();
    }

    @Override // com.android.launcher3.ExtendedEditText
    public final void hideKeyboard() {
        super.hideKeyboard();
        this.f7583v.requestFocus();
    }

    public final void i(String str, String str2) {
        String b4 = W0.b(str);
        if (this.f7576o.f2291a) {
            return;
        }
        this.f7570i = str2;
        if (this.f7584w.x()) {
            this.f7569h.c(str, str2, true);
        } else if (this.f7574m) {
            if (!TextUtils.equals(b4, this.f7570i)) {
                h(str, this.f7570i);
            }
            this.f7569h.b(null);
        }
    }

    @Override // com.android.launcher3.ExtendedEditText, android.widget.TextView
    public final boolean isSuggestionsEnabled() {
        return false;
    }

    public final boolean j() {
        return (this.f7574m || this.f7584w.x()) ? this.f7576o.f2291a : this.f7573l;
    }

    public final void k(String str) {
        char c4;
        int hashCode = str.hashCode();
        if (hashCode == 2576157) {
            if (str.equals("Show")) {
                c4 = 1;
            }
            c4 = 65535;
        } else if (hashCode != 251681445) {
            if (hashCode == 2061484173 && str.equals("Hide_Dismiss")) {
                c4 = 0;
            }
            c4 = 65535;
        } else {
            if (str.equals("Hide_Accept")) {
                c4 = 2;
            }
            c4 = 65535;
        }
        if (c4 == 0) {
            this.f7569h.f7597o.setVisibility(4);
            setCursorVisible(true);
        } else if (c4 == 1) {
            this.f7569h.f7597o.setVisibility(0);
            setCursorVisible(false);
        }
        Bundle bundle = new Bundle();
        bundle.putString("smart_compose_status", str);
        this.f7578q.sendAppPrivateCommand(this, "com.google.android.apps.nexuslauncher.SMART_COMPOSE_ACTION", bundle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7583v.getAppsStore().addUpdateListener(new r(this, 0));
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (this.f7574m || this.f7584w.w()) {
            this.f7584w.f7267G = false;
            this.f7568g = new y(this, super.onCreateInputConnection(editorInfo));
            f();
            c();
            return this.f7568g;
        }
        return super.onCreateInputConnection(editorInfo);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7583v.getAppsStore().removeUpdateListener(new r(this, 1));
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        y yVar;
        if ((this.f7574m || this.f7584w.x()) && (yVar = this.f7568g) != null) {
            if ((i4 == 59 || i4 == 60 || i4 == 21 || i4 == 22) ? false : true) {
                this.f7572k = yVar.getSurroundingText(1024, 1024, 0);
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // com.android.launcher3.ExtendedEditText, android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i4, KeyEvent keyEvent) {
        if (this.f7584w.x() && this.f7569h.f7597o.getVisibility() == 0 && keyEvent.getAction() == 0 && i4 == 67) {
            if (this.f7569h.a()) {
                f();
                return true;
            }
            f();
        } else if (this.f7574m && this.f7568g != null) {
            if (keyEvent.getAction() == 0) {
                this.f7572k = this.f7568g.getSurroundingText(1024, 1024, 0);
            } else if (keyEvent.getAction() == 1) {
                this.f7576o.d(this.f7572k, this.f7568g.getSurroundingText(1024, 1024, 0), this.f7570i, this.f7569h, this.f7583v);
            }
        }
        return super.onKeyPreIme(i4, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        y yVar;
        if ((this.f7574m || this.f7584w.x()) && (yVar = this.f7568g) != null) {
            if ((i4 == 59 || i4 == 60 || i4 == 21 || i4 == 22) ? false : true) {
                this.f7576o.d(this.f7572k, yVar.getSurroundingText(1024, 1024, 0), this.f7570i, this.f7569h, this.f7583v);
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        b(true);
        return false;
    }

    @Override // android.widget.TextView
    public final boolean onPrivateIMECommand(String str, Bundle bundle) {
        if ("com.google.android.inputmethod.latin.SMART_COMPOSE_SUPPORT_ACTION".equals(str) || "com.google.android.inputmethod.latin.canary.SMART_COMPOSE_SUPPORT_ACTION".equals(str) || "com.google.android.inputmethod.latin.dev.SMART_COMPOSE_SUPPORT_ACTION".equals(str)) {
            C0719y0 c0719y0 = this.f7584w;
            c0719y0.f7267G = true;
            if (c0719y0.x()) {
                setImeOptions(getImeOptions() & (-2));
                this.f7571j = false;
                if (TextUtils.isEmpty(getText())) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("IME_ACTION", 2);
                    this.f7578q.sendAppPrivateCommand(this, "IME_ACTION", bundle2);
                } else {
                    g();
                }
                if (this.f7569h.a()) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("smart_compose_status", "Show");
                    this.f7578q.sendAppPrivateCommand(this, "com.google.android.apps.nexuslauncher.SMART_COMPOSE_ACTION", bundle3);
                }
            }
        }
        if ("com.google.android.inputmethod.latin.DEL_ACTION".equals(str) || "com.google.android.inputmethod.latin.canary.DEL_ACTION".equals(str) || "com.google.android.inputmethod.latin.dev.DEL_ACTION".equals(str)) {
            f();
        }
        if ("com.google.android.inputmethod.latin.SWIPE_ON_SPACE_ACTION".equals(str) || "com.google.android.inputmethod.latin.canary.SWIPE_ON_SPACE_ACTION".equals(str) || "com.google.android.inputmethod.latin.dev.SWIPE_ON_SPACE_ACTION".equals(str)) {
            b(false);
        }
        return super.onPrivateIMECommand(str, bundle);
    }

    public final void onSearchResult(String str, ArrayList arrayList, int i4) {
        if (this.f7583v == null || getParent() == null) {
            return;
        }
        this.f7583v.setSearchResults(i4, arrayList);
    }

    @Override // android.widget.TextView
    public final void onSelectionChanged(int i4, int i5) {
        C0719y0 c0719y0;
        TypeAheadSearchInputView typeAheadSearchInputView = this.f7569h;
        if (typeAheadSearchInputView != null && typeAheadSearchInputView.f7597o.getVisibility() == 0 && (c0719y0 = this.f7584w) != null && c0719y0.x() && (i4 != i5 || i4 < getText().length())) {
            f();
        }
        super.onSelectionChanged(i4, i5);
    }

    @Override // android.widget.TextView
    public final boolean onTextContextMenuItem(int i4) {
        boolean onTextContextMenuItem = super.onTextContextMenuItem(i4);
        if (i4 == 16908322) {
            if (this.f7574m) {
                d();
            } else if (this.f7584w.x()) {
                this.f7576o.f2291a = false;
            }
        }
        return onTextContextMenuItem;
    }

    @Override // com.android.launcher3.ExtendedEditText
    public final void restoreToFocusedState() {
        if ((this.f7574m || this.f7584w.w()) && this.f7582u) {
            this.f7582u = false;
            this.f7569h.f7597o.setVisibility(this.f7581t);
            if (this.f7574m) {
                h(this.f7579r, this.f7580s);
            }
        }
    }

    @Override // com.android.launcher3.ExtendedEditText
    public final void saveFocusedStateAndUpdateToUnfocusedState() {
        if ((!this.f7574m && !this.f7584w.x()) || TextUtils.isEmpty(getText()) || this.f7582u) {
            return;
        }
        this.f7582u = true;
        if (this.f7584w.x()) {
            this.f7581t = this.f7569h.f7597o.getVisibility();
            this.f7569h.f7597o.setVisibility(4);
        } else if (this.f7574m) {
            String str = this.f7576o.f2297g;
            this.f7579r = str;
            if (str == null) {
                this.f7579r = "";
            }
            this.f7580s = getText().toString();
            this.f7581t = this.f7569h.f7597o.getVisibility();
            setText(this.f7579r);
            this.f7569h.f7597o.setVisibility(4);
        }
    }

    public void setMockAppsView(ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.f7583v = activityAllAppsContainerView;
    }

    public void setMockInputMethodManager(InputMethodManager inputMethodManager) {
        this.f7578q = inputMethodManager;
    }

    public void setMockObjectsFromTest(C0719y0 c0719y0) {
        this.f7584w = c0719y0;
    }

    public void setSavedOnScroll(boolean z4) {
        this.f7582u = z4;
    }

    @Override // com.google.android.apps.nexuslauncher.NexusLauncherEditText
    public final void viewClicked(InputMethodManager inputMethodManager) {
        super.viewClicked(inputMethodManager);
        if (this.f7574m) {
            if (this.f7569h.f7597o.getVisibility() == 0) {
                if (!TextUtils.isEmpty(getText().toString().substring(getSelectionStart(), getSelectionEnd()))) {
                    setText(this.f7576o.f2297g);
                }
                this.f7576o.c(this.f7583v);
            } else if (this.f7582u) {
                this.f7582u = false;
            }
        } else if (this.f7584w.x()) {
            if (this.f7569h.f7597o.getVisibility() == 0) {
                f();
            } else if (this.f7582u) {
                this.f7582u = false;
                k("Hide_Dismiss");
            }
        }
    }

    public SearchEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [Y1.t] */
    /* JADX WARN: Type inference failed for: r5v5, types: [Y1.t] */
    /* JADX WARN: Type inference failed for: r6v7, types: [Y1.t] */
    public SearchEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        C0719y0 f4 = C0719y0.f(context);
        this.f7584w = f4;
        C0696s1 c0696s1 = f4.f7283p;
        this.f7585x = c0696s1;
        this.f7577p = new X0(c0696s1);
        boolean z4 = c0696s1.f7185h;
        this.f7573l = z4;
        boolean z5 = c0696s1.f7190m;
        this.f7574m = z5;
        this.f7575n = c0696s1.f7193p;
        if (z4 && !z5) {
            setImeOptions(getImeOptions() | 3);
            this.f7571j = true;
        } else {
            this.f7571j = false;
        }
        if (FeatureFlags.ENABLE_HIDE_HEADER.get()) {
            setPrivateImeOptions("need_conversion,com.google.android.inputmethod.latin.canary.hideHeaderOnInitialState,com.google.android.inputmethod.latin.hideHeaderOnInitialState");
        } else {
            setPrivateImeOptions("need_conversion");
        }
        setPrivateImeOptions("com.google.android.inputmethod.latin.appSupportsSmartComposeAndDel,com.google.android.inputmethod.latin.canary.appSupportsSmartComposeAndDel,com.google.android.inputmethod.latin.dev.appSupportsSmartComposeAndDel");
        if (c0696s1.f7195r) {
            setInputType(524289);
        }
        this.f7578q = (InputMethodManager) context.getSystemService(InputMethodManager.class);
        this.f7576o = new g(new Runnable(this) { // from class: Y1.t

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchEditText f2304e;

            {
                this.f2304e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f2304e.d();
                        return;
                    case 1:
                        this.f2304e.c();
                        return;
                    default:
                        this.f2304e.g();
                        return;
                }
            }
        }, new Runnable(this) { // from class: Y1.t

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchEditText f2304e;

            {
                this.f2304e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f2304e.d();
                        return;
                    case 1:
                        this.f2304e.c();
                        return;
                    default:
                        this.f2304e.g();
                        return;
                }
            }
        }, new Runnable(this) { // from class: Y1.t

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SearchEditText f2304e;

            {
                this.f2304e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        this.f2304e.d();
                        return;
                    case 1:
                        this.f2304e.c();
                        return;
                    default:
                        this.f2304e.g();
                        return;
                }
            }
        }, this.f7584w);
        setOnLongClickListener(this);
        setCustomInsertionActionModeCallback(new u());
        setCustomSelectionActionModeCallback(new u());
    }
}
