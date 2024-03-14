package e;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: e.G  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0806G implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final View f8844d;

    /* renamed from: e  reason: collision with root package name */
    public final String f8845e;

    /* renamed from: f  reason: collision with root package name */
    public Method f8846f;

    /* renamed from: g  reason: collision with root package name */
    public Context f8847g;

    public View$OnClickListenerC0806G(View view, String str) {
        this.f8844d = view;
        this.f8845e = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id;
        String str;
        Method method;
        if (this.f8846f == null) {
            Context context = this.f8844d.getContext();
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f8845e, View.class)) != null) {
                        this.f8846f = method;
                        this.f8847g = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f8844d.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f8844d.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f8845e + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f8844d.getClass() + str);
        }
        try {
            this.f8846f.invoke(this.f8847g, view);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e4);
        } catch (InvocationTargetException e5) {
            throw new IllegalStateException("Could not execute method for android:onClick", e5);
        }
    }
}
