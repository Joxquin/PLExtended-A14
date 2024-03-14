package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
/* loaded from: classes.dex */
public class ListFragment extends K {

    /* renamed from: d  reason: collision with root package name */
    public final Handler f3304d = new Handler();

    /* renamed from: e  reason: collision with root package name */
    public final L0 f3305e = new L0(this);

    /* renamed from: f  reason: collision with root package name */
    public final M0 f3306f = new M0(this);

    /* renamed from: g  reason: collision with root package name */
    public ListAdapter f3307g;

    /* renamed from: h  reason: collision with root package name */
    public ListView f3308h;

    /* renamed from: i  reason: collision with root package name */
    public View f3309i;

    /* renamed from: j  reason: collision with root package name */
    public View f3310j;

    /* renamed from: k  reason: collision with root package name */
    public View f3311k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3312l;

    public final void b() {
        if (this.f3308h != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.f3308h = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            if (textView == null) {
                this.f3309i = view.findViewById(16908292);
            } else {
                textView.setVisibility(8);
            }
            this.f3310j = view.findViewById(16711682);
            this.f3311k = view.findViewById(16711683);
            View findViewById = view.findViewById(16908298);
            if (!(findViewById instanceof ListView)) {
                if (findViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) findViewById;
            this.f3308h = listView;
            View view2 = this.f3309i;
            if (view2 != null) {
                listView.setEmptyView(view2);
            }
        }
        this.f3312l = true;
        this.f3308h.setOnItemClickListener(this.f3306f);
        ListAdapter listAdapter = this.f3307g;
        if (listAdapter != null) {
            this.f3307g = listAdapter;
            ListView listView2 = this.f3308h;
            if (listView2 != null) {
                listView2.setAdapter(listAdapter);
                if (!this.f3312l) {
                    d(true, requireView().getWindowToken() != null);
                }
            }
        } else if (this.f3310j != null) {
            d(false, false);
        }
        this.f3304d.post(this.f3305e);
    }

    public final void d(boolean z4, boolean z5) {
        b();
        View view = this.f3310j;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.f3312l == z4) {
            return;
        }
        this.f3312l = z4;
        if (z4) {
            if (z5) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                this.f3311k.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
            } else {
                view.clearAnimation();
                this.f3311k.clearAnimation();
            }
            this.f3310j.setVisibility(8);
            this.f3311k.setVisibility(0);
            return;
        }
        if (z5) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
            this.f3311k.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
        } else {
            view.clearAnimation();
            this.f3311k.clearAnimation();
        }
        this.f3310j.setVisibility(0);
        this.f3311k.setVisibility(8);
    }

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(requireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(16908298);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.K
    public final void onDestroyView() {
        this.f3304d.removeCallbacks(this.f3305e);
        this.f3308h = null;
        this.f3312l = false;
        this.f3311k = null;
        this.f3310j = null;
        this.f3309i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.K
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        b();
    }
}
