package com.android.launcher3.util;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class ViewPool {
    private int mCurrentSize = 0;
    private final LayoutInflater mInflater;
    private final int mLayoutId;
    private final ViewGroup mParent;
    private final Object[] mPool;

    /* loaded from: classes.dex */
    public interface Reusable {
        void onRecycle();
    }

    public ViewPool(Context context, ViewGroup viewGroup, int i4, int i5, final int i6) {
        this.mLayoutId = i4;
        this.mParent = viewGroup;
        LayoutInflater from = LayoutInflater.from(context);
        this.mInflater = from;
        this.mPool = new Object[i5];
        if (i6 > 0) {
            final Handler handler = new Handler();
            final LayoutInflater cloneInContext = from.cloneInContext(from.getContext());
            new Thread(new Runnable() { // from class: com.android.launcher3.util.N
                @Override // java.lang.Runnable
                public final void run() {
                    ViewPool.b(ViewPool.this, i6, cloneInContext, handler);
                }
            }, "ViewPool-init").start();
        }
    }

    public static void a(ViewPool viewPool, View view) {
        int i4 = viewPool.mCurrentSize;
        Object[] objArr = viewPool.mPool;
        if (i4 >= objArr.length) {
            return;
        }
        objArr[i4] = view;
        viewPool.mCurrentSize = i4 + 1;
    }

    public static void b(final ViewPool viewPool, int i4, LayoutInflater layoutInflater, Handler handler) {
        for (int i5 = 0; i5 < i4; i5++) {
            final View inflate = layoutInflater.inflate(viewPool.mLayoutId, viewPool.mParent, false);
            handler.post(new Runnable() { // from class: com.android.launcher3.util.O
                @Override // java.lang.Runnable
                public final void run() {
                    ViewPool.a(ViewPool.this, inflate);
                }
            });
        }
        viewPool.getClass();
    }

    public final View getView() {
        int i4 = this.mCurrentSize;
        if (i4 <= 0) {
            return this.mInflater.inflate(this.mLayoutId, this.mParent, false);
        }
        int i5 = i4 - 1;
        this.mCurrentSize = i5;
        return (View) this.mPool[i5];
    }

    public final void recycle(View view) {
        ((Reusable) view).onRecycle();
        int i4 = this.mCurrentSize;
        Object[] objArr = this.mPool;
        if (i4 >= objArr.length) {
            return;
        }
        objArr[i4] = view;
        this.mCurrentSize = i4 + 1;
    }
}
