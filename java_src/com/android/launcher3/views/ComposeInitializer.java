package com.android.launcher3.views;

import a0.C0152e;
import a0.C0153f;
import a0.C0155h;
import a0.InterfaceC0154g;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.W;
import com.android.launcher3.Utilities;
import com.android.launcher3.views.ComposeInitializer;
/* loaded from: classes.dex */
public final class ComposeInitializer {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.views.ComposeInitializer$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            if (W.a(view) != null) {
                throw new IllegalStateException("View " + view + " already has a LifecycleOwner");
            }
            ViewParent parent = view.getParent();
            if ((parent instanceof View) && ((View) parent).getId() != 16908290) {
                throw new IllegalStateException("ComposeInitializer.onContentChildAttachedToWindow(View) must be called on the content child. Outside of activities and dialogs, this is usually the top-most View of a window.");
            }
            ViewLifecycleOwner viewLifecycleOwner = new ViewLifecycleOwner(view);
            viewLifecycleOwner.onCreate();
            W.b(view, viewLifecycleOwner);
            C0155h.a(view, viewLifecycleOwner);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            InterfaceC0251q a4 = W.a(view);
            if (a4 != null) {
                ((ViewLifecycleOwner) a4).onDestroy();
            }
            W.b(view, null);
            C0155h.a(view, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ViewLifecycleOwner implements InterfaceC0154g {
        private final Api34Impl mApi34Impl;
        private final C0153f mSavedStateRegistryController;
        private final View mView;
        private final l mWindowFocusListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.android.launcher3.views.l
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public final void onWindowFocusChanged(boolean z4) {
                ComposeInitializer.ViewLifecycleOwner.this.updateState();
            }
        };
        private final C0252s mLifecycleRegistry = new C0252s(this);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public final class Api34Impl {
            private final m mWindowVisibilityListener = new ViewTreeObserver.OnWindowVisibilityChangeListener() { // from class: com.android.launcher3.views.m
                public final void onWindowVisibilityChanged(int i4) {
                    ComposeInitializer.ViewLifecycleOwner.this.updateState();
                }
            };

            /* JADX WARN: Type inference failed for: r1v1, types: [com.android.launcher3.views.m] */
            public Api34Impl() {
            }

            public final void addOnWindowVisibilityChangeListener() {
                ViewLifecycleOwner.this.mView.getViewTreeObserver().addOnWindowVisibilityChangeListener(this.mWindowVisibilityListener);
            }

            public final void removeOnWindowVisibilityChangeListener() {
                ViewLifecycleOwner.this.mView.getViewTreeObserver().removeOnWindowVisibilityChangeListener(this.mWindowVisibilityListener);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.launcher3.views.l] */
        public ViewLifecycleOwner(View view) {
            C0153f c0153f = new C0153f(this);
            this.mSavedStateRegistryController = c0153f;
            this.mView = view;
            if (Utilities.ATLEAST_U) {
                this.mApi34Impl = new Api34Impl();
            } else {
                this.mApi34Impl = null;
            }
            c0153f.b(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateState() {
            View view = this.mView;
            this.mLifecycleRegistry.h(view.getWindowVisibility() != 0 ? Lifecycle$State.CREATED : !view.hasWindowFocus() ? Lifecycle$State.STARTED : Lifecycle$State.RESUMED);
        }

        @Override // androidx.lifecycle.InterfaceC0251q
        public final AbstractC0247m getLifecycle() {
            return this.mLifecycleRegistry;
        }

        @Override // a0.InterfaceC0154g
        public final C0152e getSavedStateRegistry() {
            return this.mSavedStateRegistryController.f2389b;
        }

        public final void onCreate() {
            this.mLifecycleRegistry.h(Lifecycle$State.CREATED);
            if (Utilities.ATLEAST_U) {
                this.mApi34Impl.addOnWindowVisibilityChangeListener();
            }
            this.mView.getViewTreeObserver().addOnWindowFocusChangeListener(this.mWindowFocusListener);
            updateState();
        }

        public final void onDestroy() {
            if (Utilities.ATLEAST_U) {
                this.mApi34Impl.removeOnWindowVisibilityChangeListener();
            }
            this.mView.getViewTreeObserver().removeOnWindowFocusChangeListener(this.mWindowFocusListener);
            this.mLifecycleRegistry.h(Lifecycle$State.DESTROYED);
        }
    }

    public static void initCompose(ActivityContext activityContext) {
        View dragLayer = activityContext.getDragLayer();
        ViewParent parent = dragLayer.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getId() == 16908290) {
                break;
            }
            parent = view.getParent();
            dragLayer = view;
        }
        dragLayer.addOnAttachStateChangeListener(new AnonymousClass1());
    }
}
