package com.android.systemui.shared.animation;

import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import e3.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
/* loaded from: classes.dex */
public final class DisableSubpixelTextTransitionListener implements InterfaceC1405d {
    private final List childrenTextViews = new ArrayList();
    private boolean isTransitionInProgress;
    private final ViewGroup rootView;

    public DisableSubpixelTextTransitionListener(ViewGroup viewGroup) {
        this.rootView = viewGroup;
    }

    private final void getAllChildTextView(ViewGroup viewGroup, List list) {
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                h.d(childAt, "getChildAt(index)");
                if (childAt instanceof ViewGroup) {
                    getAllChildTextView((ViewGroup) childAt, list);
                } else if ((childAt instanceof TextView) && (((TextView) childAt).getPaintFlags() & 128) <= 0) {
                    list.add(new WeakReference(childAt));
                }
            }
        }
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionFinished() {
        if (this.isTransitionInProgress) {
            this.isTransitionInProgress = false;
            if (!Trace.isTagEnabled(4096L)) {
                for (WeakReference weakReference : this.childrenTextViews) {
                    TextView textView = (TextView) weakReference.get();
                    if (textView != null) {
                        textView.setPaintFlags(textView.getPaintFlags() & (-129));
                    }
                }
                this.childrenTextViews.clear();
                return;
            }
            Trace.traceBegin(4096L, "subpixelFlagEnableForTextView");
            try {
                for (WeakReference weakReference2 : this.childrenTextViews) {
                    TextView textView2 = (TextView) weakReference2.get();
                    if (textView2 != null) {
                        textView2.setPaintFlags(textView2.getPaintFlags() & (-129));
                    }
                }
                this.childrenTextViews.clear();
                f fVar = f.f9037a;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionProgress(float f4) {
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionStarted() {
        this.isTransitionInProgress = true;
        if (!Trace.isTagEnabled(4096L)) {
            if (Trace.isTagEnabled(4096L)) {
                Trace.traceBegin(4096L, "subpixelFlagTraverseHierarchy");
                try {
                    getAllChildTextView(this.rootView, this.childrenTextViews);
                    f fVar = f.f9037a;
                } finally {
                }
            } else {
                getAllChildTextView(this.rootView, this.childrenTextViews);
            }
            if (!Trace.isTagEnabled(4096L)) {
                for (WeakReference weakReference : this.childrenTextViews) {
                    TextView textView = (TextView) weakReference.get();
                    if (textView != null) {
                        textView.setPaintFlags(textView.getPaintFlags() | 128);
                    }
                }
                return;
            }
            Trace.traceBegin(4096L, "subpixelFlagDisableForTextView");
            try {
                for (WeakReference weakReference2 : this.childrenTextViews) {
                    TextView textView2 = (TextView) weakReference2.get();
                    if (textView2 != null) {
                        textView2.setPaintFlags(textView2.getPaintFlags() | 128);
                    }
                }
                f fVar2 = f.f9037a;
                return;
            } finally {
            }
        }
        Trace.traceBegin(4096L, "subpixelFlagSetForTextView");
        try {
            if (Trace.isTagEnabled(4096L)) {
                Trace.traceBegin(4096L, "subpixelFlagTraverseHierarchy");
                getAllChildTextView(this.rootView, this.childrenTextViews);
                f fVar3 = f.f9037a;
                Trace.traceEnd(4096L);
            } else {
                getAllChildTextView(this.rootView, this.childrenTextViews);
            }
            if (Trace.isTagEnabled(4096L)) {
                Trace.traceBegin(4096L, "subpixelFlagDisableForTextView");
                for (WeakReference weakReference3 : this.childrenTextViews) {
                    TextView textView3 = (TextView) weakReference3.get();
                    if (textView3 != null) {
                        textView3.setPaintFlags(textView3.getPaintFlags() | 128);
                    }
                }
                f fVar4 = f.f9037a;
                Trace.traceEnd(4096L);
            } else {
                for (WeakReference weakReference4 : this.childrenTextViews) {
                    TextView textView4 = (TextView) weakReference4.get();
                    if (textView4 != null) {
                        textView4.setPaintFlags(textView4.getPaintFlags() | 128);
                    }
                }
            }
            f fVar5 = f.f9037a;
        } finally {
        }
    }
}
