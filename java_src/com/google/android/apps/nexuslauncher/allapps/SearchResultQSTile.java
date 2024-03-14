package com.google.android.apps.nexuslauncher.allapps;

import android.animation.ArgbEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.StatusBarManager;
import android.app.search.SearchTarget;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import com.google.android.systemui.qs.launcher.ILauncherTileService;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public class SearchResultQSTile extends com.android.systemui.animation.view.a implements A2, androidx.lifecycle.z {

    /* renamed from: F  reason: collision with root package name */
    public static final /* synthetic */ int f6764F = 0;

    /* renamed from: A  reason: collision with root package name */
    public int f6765A;

    /* renamed from: B  reason: collision with root package name */
    public int f6766B;

    /* renamed from: C  reason: collision with root package name */
    public int f6767C;

    /* renamed from: D  reason: collision with root package name */
    public boolean f6768D;

    /* renamed from: E  reason: collision with root package name */
    public int f6769E;

    /* renamed from: e  reason: collision with root package name */
    public final int f6770e;

    /* renamed from: f  reason: collision with root package name */
    public final int f6771f;

    /* renamed from: g  reason: collision with root package name */
    public final int f6772g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6773h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6774i;

    /* renamed from: j  reason: collision with root package name */
    public final int f6775j;

    /* renamed from: k  reason: collision with root package name */
    public final int f6776k;

    /* renamed from: l  reason: collision with root package name */
    public final int f6777l;

    /* renamed from: m  reason: collision with root package name */
    public final int f6778m;
    ImageView mChevronIcon;
    TextView mLabel;
    int mLastState;
    TextView mSecondaryLabel;
    SafeCloseable mTileSession;
    String mTileSpec;

    /* renamed from: n  reason: collision with root package name */
    public final int f6779n;

    /* renamed from: o  reason: collision with root package name */
    public final int f6780o;

    /* renamed from: p  reason: collision with root package name */
    public final int f6781p;

    /* renamed from: q  reason: collision with root package name */
    public final C0719y0 f6782q;

    /* renamed from: r  reason: collision with root package name */
    public final StatusBarManager f6783r;

    /* renamed from: s  reason: collision with root package name */
    public final ActivityAllAppsContainerView f6784s;

    /* renamed from: t  reason: collision with root package name */
    public final ValueAnimator f6785t;

    /* renamed from: u  reason: collision with root package name */
    public final ValueAnimator f6786u;

    /* renamed from: v  reason: collision with root package name */
    public SearchTarget f6787v;

    /* renamed from: w  reason: collision with root package name */
    public final Resources f6788w;

    /* renamed from: x  reason: collision with root package name */
    public Drawable f6789x;

    /* renamed from: y  reason: collision with root package name */
    public ImageView f6790y;

    /* renamed from: z  reason: collision with root package name */
    public String f6791z;

    public SearchResultQSTile(Context context) {
        this(context, null, 0);
    }

    public static PropertyValuesHolder k(String str, int... iArr) {
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, iArr);
        ofInt.setEvaluator(ArgbEvaluator.getInstance());
        return ofInt;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean d() {
        return D2.h(this.f6765A, 4);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final void e(C0653h1 c0653h1) {
        r();
        SearchTarget searchTarget = c0653h1.f7080a;
        this.f6787v = searchTarget;
        this.mTileSpec = searchTarget.getExtras().getString("tileSpec");
        this.f6791z = this.f6787v.getExtras().getString("qst_title");
        this.f6765A = D2.f((Bundle) Objects.requireNonNullElse(this.f6787v.getExtras(), new Bundle()));
        this.mLabel.setText(this.f6791z);
        setOnClickListener(new U1(this, 1));
        C0719y0 c0719y0 = this.f6782q;
        String str = this.mTileSpec;
        final TileLifeCycle tileLifeCycle = (TileLifeCycle) c0719y0.f7273f.get(str);
        if (tileLifeCycle == null) {
            tileLifeCycle = new TileLifeCycle(c0719y0, c0719y0.f7266F, str);
            c0719y0.f7273f.put(str, tileLifeCycle);
        }
        tileLifeCycle.addListener(this);
        J2.c cVar = tileLifeCycle.mLastValue;
        if (cVar != null) {
            i(cVar);
        }
        this.mTileSession = new SafeCloseable() { // from class: com.google.android.apps.nexuslauncher.allapps.d0
            @Override // java.lang.AutoCloseable
            public final void close() {
                TileLifeCycle.this.removeListener(this);
            }
        };
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final CharSequence f() {
        return this.f6791z;
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [com.google.android.apps.nexuslauncher.allapps.T1] */
    @Override // androidx.lifecycle.z
    public final void i(Object obj) {
        final J2.c cVar = (J2.c) obj;
        if (cVar.f857o) {
            Executors.MAIN_EXECUTOR.post(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.S1
                @Override // java.lang.Runnable
                public final void run() {
                    final SearchResultQSTile searchResultQSTile = SearchResultQSTile.this;
                    List adapterItems = searchResultQSTile.f6784s.getSearchResultList().getAdapterItems();
                    int i4 = 0;
                    while (true) {
                        ArrayList arrayList = (ArrayList) adapterItems;
                        if (i4 >= arrayList.size()) {
                            return;
                        }
                        BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) arrayList.get(i4);
                        if (adapterItem instanceof C0653h1) {
                            C0653h1 c0653h1 = (C0653h1) adapterItem;
                            if ("qs_tile_container".equals(c0653h1.f7080a.getLayoutType())) {
                                final ArrayList arrayList2 = (ArrayList) c0653h1.f7081b;
                                if (arrayList2.size() == 1) {
                                    ((SearchEditText) searchResultQSTile.f6784s.getSearchUiManager().getEditText()).c();
                                    arrayList2.remove(0);
                                    arrayList.remove(i4);
                                    searchResultQSTile.f6784s.getSearchRecyclerView().getAdapter().notifyItemRemoved(i4);
                                    return;
                                }
                                int orElse = IntStream.range(0, arrayList2.size()).filter(new IntPredicate() { // from class: com.google.android.apps.nexuslauncher.allapps.X1
                                    @Override // java.util.function.IntPredicate
                                    public final boolean test(int i5) {
                                        return TextUtils.equals(SearchResultQSTile.this.mTileSpec, ((SearchTarget) arrayList2.get(i5)).getExtras().getString("tileSpec"));
                                    }
                                }).findFirst().orElse(-1);
                                if (orElse != -1) {
                                    if (orElse == 0) {
                                        ((SearchEditText) searchResultQSTile.f6784s.getSearchUiManager().getEditText()).c();
                                        if (arrayList2.size() > 1) {
                                            ((SearchTarget) arrayList2.get(1)).getExtras().putBoolean("quick_launch", true);
                                        }
                                    }
                                    arrayList2.remove(orElse);
                                    if (arrayList2.size() > 0) {
                                        searchResultQSTile.f6784s.getSearchRecyclerView().getAdapter().notifyItemChanged(i4);
                                        return;
                                    }
                                    arrayList.remove(i4);
                                    searchResultQSTile.f6784s.getSearchRecyclerView().getAdapter().notifyItemRemoved(i4);
                                    return;
                                }
                                return;
                            }
                        }
                        i4++;
                    }
                }
            });
            Log.e("SearchResultQSTile", String.format("Remove unsupported tile: %s", cVar.f851i));
            ((ActivityContext) this.f6782q.f7271d).getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_QS_TILE_REMOVE_UNSUPPORTED);
            return;
        }
        int i4 = cVar.f852j;
        this.mLabel.setText(cVar.f847e);
        this.mSecondaryLabel.setText(cVar.f848f);
        if (cVar.f856n) {
            this.mChevronIcon.setVisibility(0);
        } else {
            this.mChevronIcon.setVisibility(8);
        }
        this.f6785t.cancel();
        int i5 = this.mLastState;
        if (i5 == -1 || i5 == i4) {
            int l4 = l(i4);
            int p4 = p(i4);
            int q4 = q(i4);
            int q5 = q(i4);
            this.f6789x.mutate().setTint(l4);
            this.f6766B = l4;
            this.mLabel.setTextColor(p4);
            this.mSecondaryLabel.setTextColor(q4);
            this.mChevronIcon.setImageTintList(ColorStateList.valueOf(q5));
        } else {
            this.f6785t.setValues(k("background", this.f6766B, l(i4)), k("label", this.mLabel.getCurrentTextColor(), p(i4)), k("secondaryLabel", this.mSecondaryLabel.getCurrentTextColor(), q(i4)), k("chevron", this.mChevronIcon.getImageTintList() != null ? this.mChevronIcon.getImageTintList().getDefaultColor() : 0, q(i4)));
            this.f6785t.start();
        }
        ?? r12 = new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.T1
            @Override // java.lang.Runnable
            public final void run() {
                SearchResultQSTile searchResultQSTile = SearchResultQSTile.this;
                J2.c cVar2 = cVar;
                int i6 = SearchResultQSTile.f6764F;
                searchResultQSTile.getClass();
                Icon icon = cVar2.f846d;
                if (icon != null) {
                    if (icon.getType() != 2 || icon.getResId() == 0) {
                        searchResultQSTile.f6790y.setImageIcon(cVar2.f846d);
                        return;
                    }
                    int resId = icon.getResId();
                    if (searchResultQSTile.f6769E != resId) {
                        Drawable drawable = searchResultQSTile.f6788w.getDrawable(resId);
                        searchResultQSTile.f6790y.setImageDrawable(drawable);
                        if (drawable instanceof Animatable2) {
                            Animatable2 animatable2 = (Animatable2) drawable;
                            animatable2.start();
                            if (cVar2.f853k) {
                                animatable2.registerAnimationCallback(new Y1(animatable2));
                            }
                        }
                        searchResultQSTile.f6769E = resId;
                    }
                }
            }
        };
        this.f6786u.cancel();
        int i6 = this.mLastState;
        if (i6 == -1 || i6 == i4) {
            int o4 = o(i4);
            this.f6790y.setImageTintList(ColorStateList.valueOf(o4));
            this.f6767C = o4;
            r12.run();
        } else {
            this.f6786u.setValues(k("icon", this.f6767C, o(i4)));
            this.f6786u.removeAllListeners();
            this.f6786u.addUpdateListener(new W1(this, 1));
            this.f6786u.addListener(new Z1(r12));
            this.f6786u.start();
        }
        setOnClickListener(null);
        if (cVar.f854l) {
            setOnClickListener(new U1(this, 0));
        }
        if (cVar.f855m) {
            setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.android.apps.nexuslauncher.allapps.V1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    SearchResultQSTile searchResultQSTile = SearchResultQSTile.this;
                    String str = searchResultQSTile.mTileSpec;
                    ILauncherTileService iLauncherTileService = ((TileLifeCycle) searchResultQSTile.f6782q.f7273f.get(str)).mService;
                    if (iLauncherTileService != null) {
                        try {
                            iLauncherTileService.handleLongClick(str);
                            return true;
                        } catch (RemoteException unused) {
                            Log.e("SearchResultQSTile", "Failed to call action.perform");
                        }
                    }
                    return false;
                }
            });
        }
        setContentDescription(cVar.f849g);
        setStateDescription(cVar.f850h);
        this.mLastState = i4;
    }

    public final int l(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    Log.e("SearchResultQSTile", String.format("Invalid state %d", Integer.valueOf(i4)));
                    return 0;
                }
                return this.f6770e;
            }
            return this.f6771f;
        }
        return this.f6772g;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.A2
    public final boolean n() {
        this.f6768D = true;
        performClick();
        return true;
    }

    public final int o(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    Log.e("SearchResultQSTile", String.format("Invalid state %d", Integer.valueOf(i4)));
                    return 0;
                }
                return this.f6779n;
            }
            return this.f6780o;
        }
        return this.f6781p;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mLabel = (TextView) findViewById(R.id.tile_label);
        this.mSecondaryLabel = (TextView) findViewById(R.id.tile_secondary_label);
        this.mChevronIcon = (ImageView) findViewById(R.id.chevron_icon);
        this.f6790y = (ImageView) findViewById(R.id.tile_icon);
        this.f6789x = ((RippleDrawable) ((SearchResultQSTile) findViewById(R.id.tile_layout)).getBackground()).findDrawableByLayerId(R.id.background);
    }

    public final int p(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    Log.e("SearchResultQSTile", String.format("Invalid state %d", Integer.valueOf(i4)));
                    return 0;
                }
                return this.f6773h;
            }
            return this.f6774i;
        }
        return this.f6775j;
    }

    public final int q(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    Log.e("SearchResultQSTile", String.format("Invalid state %d", Integer.valueOf(i4)));
                    return 0;
                }
                return this.f6776k;
            }
            return this.f6777l;
        }
        return this.f6778m;
    }

    public final void r() {
        this.mLastState = -1;
        this.f6789x.mutate().setTint(0);
        this.f6766B = 0;
        this.mLabel.setText((CharSequence) null);
        this.mSecondaryLabel.setText((CharSequence) null);
        this.mChevronIcon.setVisibility(8);
        setOnClickListener(null);
        setOnLongClickListener(null);
        this.f6768D = false;
        SafeCloseable safeCloseable = this.mTileSession;
        if (safeCloseable != null) {
            safeCloseable.close();
        }
    }

    public SearchResultQSTile(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchResultQSTile(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f6770e = getContext().getColor(R.color.qs_tile_bg_active);
        this.f6771f = getContext().getColor(R.color.qs_tile_bg_inactive);
        this.f6772g = getContext().getColor(R.color.qs_tile_bg_unavailable);
        this.f6773h = getContext().getColor(R.color.qs_tile_label_active);
        this.f6774i = getContext().getColor(R.color.qs_tile_label_inactive);
        this.f6775j = getContext().getColor(R.color.qs_tile_label_unavailable);
        this.f6776k = getContext().getColor(R.color.qs_tile_secondary_label_active);
        this.f6777l = getContext().getColor(R.color.qs_tile_secondary_label_inactive);
        this.f6778m = getContext().getColor(R.color.qs_tile_secondary_label_unavailable);
        this.f6779n = getContext().getColor(R.color.qs_tile_icon_active);
        this.f6780o = getContext().getColor(R.color.qs_tile_icon_inactive);
        this.f6781p = getContext().getColor(R.color.qs_tile_icon_unavailable);
        this.f6785t = new ValueAnimator();
        this.f6786u = new ValueAnimator();
        this.f6765A = 0;
        this.mLastState = -1;
        this.f6766B = 0;
        this.f6767C = 0;
        this.f6769E = -1;
        C0719y0 f4 = C0719y0.f(context);
        this.f6782q = f4;
        this.f6783r = (StatusBarManager) context.getSystemService(StatusBarManager.class);
        this.f6784s = ((ActivityContext) f4.f7271d).getAppsView();
        try {
            this.f6788w = context.getPackageManager().getResourcesForApplication("com.android.systemui");
        } catch (Exception e4) {
            Log.e("SearchResultQSTile", "Failed to call getResourcesForApplication", e4);
        }
        this.f6785t.setDuration(350L);
        this.f6785t.addUpdateListener(new W1(this, 0));
        this.f6786u.setDuration(350L);
    }
}
