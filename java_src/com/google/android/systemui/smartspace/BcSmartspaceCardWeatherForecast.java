package com.google.android.systemui.smartspace;

import E.c;
import K2.AbstractC0041n;
import K2.InterfaceC0044q;
import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.r;
import com.android.systemui.shared.R;
import com.google.android.systemui.smartspace.BcSmartspaceCardWeatherForecast;
import java.util.Locale;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardWeatherForecast extends AbstractC0041n {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f8318e = 0;

    public BcSmartspaceCardWeatherForecast(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View[] viewArr = new ConstraintLayout[4];
        for (int i4 = 0; i4 < 4; i4++) {
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewGroup.inflate(getContext(), R.layout.smartspace_card_weather_forecast_column, null);
            constraintLayout.setId(View.generateViewId());
            viewArr[i4] = constraintLayout;
        }
        int i5 = 0;
        while (i5 < 4) {
            r rVar = new r(0);
            View view = viewArr[i5];
            ConstraintLayout constraintLayout2 = i5 > 0 ? viewArr[i5 - 1] : null;
            ConstraintLayout constraintLayout3 = i5 < 3 ? viewArr[i5 + 1] : null;
            if (i5 == 0) {
                rVar.f2855t = 0;
                rVar.f2802J = 1;
            } else {
                rVar.f2854s = constraintLayout2.getId();
            }
            if (i5 == 3) {
                rVar.f2857v = 0;
            } else {
                rVar.f2856u = constraintLayout3.getId();
            }
            rVar.f2835i = 0;
            rVar.f2841l = 0;
            addView(view, rVar);
            i5++;
        }
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        boolean z4 = false;
        if (extras != null) {
            if (extras.containsKey("temperatureValues")) {
                final String[] stringArray = extras.getStringArray("temperatureValues");
                if (stringArray == null) {
                    Log.w("BcSmartspaceCardWeatherForecast", "Temperature values array is null.");
                } else {
                    v(new InterfaceC0044q() { // from class: K2.p
                        @Override // K2.InterfaceC0044q
                        public final void a(View view, int i4) {
                            int i5 = r1;
                            Object[] objArr = stringArray;
                            switch (i5) {
                                case 0:
                                    int i6 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                case 1:
                                    int i7 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                default:
                                    int i8 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((ImageView) view).setImageBitmap(((Bitmap[]) objArr)[i4]);
                                    return;
                            }
                        }
                    }, stringArray.length, R.id.temperature_value, "temperature value");
                }
                z4 = true;
            }
            if (extras.containsKey("weatherIcons")) {
                final Bitmap[] bitmapArr = (Bitmap[]) extras.get("weatherIcons");
                if (bitmapArr == null) {
                    Log.w("BcSmartspaceCardWeatherForecast", "Weather icons array is null.");
                } else {
                    v(new InterfaceC0044q() { // from class: K2.p
                        @Override // K2.InterfaceC0044q
                        public final void a(View view, int i4) {
                            int i5 = r1;
                            Object[] objArr = bitmapArr;
                            switch (i5) {
                                case 0:
                                    int i6 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                case 1:
                                    int i7 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                default:
                                    int i8 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((ImageView) view).setImageBitmap(((Bitmap[]) objArr)[i4]);
                                    return;
                            }
                        }
                    }, bitmapArr.length, R.id.weather_icon, "weather icon");
                }
                z4 = true;
            }
            if (extras.containsKey("timestamps")) {
                final String[] stringArray2 = extras.getStringArray("timestamps");
                if (stringArray2 == null) {
                    Log.w("BcSmartspaceCardWeatherForecast", "Timestamps array is null.");
                } else {
                    v(new InterfaceC0044q() { // from class: K2.p
                        @Override // K2.InterfaceC0044q
                        public final void a(View view, int i4) {
                            int i5 = r1;
                            Object[] objArr = stringArray2;
                            switch (i5) {
                                case 0:
                                    int i6 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                case 1:
                                    int i7 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((TextView) view).setText(((String[]) objArr)[i4]);
                                    return;
                                default:
                                    int i8 = BcSmartspaceCardWeatherForecast.f8318e;
                                    ((ImageView) view).setImageBitmap(((Bitmap[]) objArr)[i4]);
                                    return;
                            }
                        }
                    }, stringArray2.length, R.id.timestamp, "timestamp");
                }
                return true;
            }
            return z4;
        }
        return false;
    }

    @Override // K2.AbstractC0041n
    public final void u(final int i4) {
        v(new InterfaceC0044q() { // from class: K2.o
            @Override // K2.InterfaceC0044q
            public final void a(View view, int i5) {
                int i6 = r2;
                int i7 = i4;
                switch (i6) {
                    case 0:
                        int i8 = BcSmartspaceCardWeatherForecast.f8318e;
                        ((TextView) view).setTextColor(i7);
                        return;
                    default:
                        int i9 = BcSmartspaceCardWeatherForecast.f8318e;
                        ((TextView) view).setTextColor(i7);
                        return;
                }
            }
        }, 4, R.id.temperature_value, "temperature value");
        v(new InterfaceC0044q() { // from class: K2.o
            @Override // K2.InterfaceC0044q
            public final void a(View view, int i5) {
                int i6 = r2;
                int i7 = i4;
                switch (i6) {
                    case 0:
                        int i8 = BcSmartspaceCardWeatherForecast.f8318e;
                        ((TextView) view).setTextColor(i7);
                        return;
                    default:
                        int i9 = BcSmartspaceCardWeatherForecast.f8318e;
                        ((TextView) view).setTextColor(i7);
                        return;
                }
            }
        }, 4, R.id.timestamp, "timestamp");
    }

    public final void v(InterfaceC0044q interfaceC0044q, int i4, int i5, String str) {
        if (getChildCount() < 4) {
            Log.w("BcSmartspaceCardWeatherForecast", String.format(Locale.US, c.a("Missing %d ", str, " view(s) to update."), Integer.valueOf(4 - getChildCount())));
            return;
        }
        if (i4 < 4) {
            Locale locale = Locale.US;
            int i6 = 4 - i4;
            Log.w("BcSmartspaceCardWeatherForecast", String.format(locale, c.a("Missing %d ", str, "(s). Hiding incomplete columns."), Integer.valueOf(i6)));
            if (getChildCount() < 4) {
                Log.w("BcSmartspaceCardWeatherForecast", String.format(locale, "Missing %d columns to update.", Integer.valueOf(4 - getChildCount())));
            } else {
                int i7 = 3 - i6;
                int i8 = 0;
                while (i8 < 4) {
                    t.f(getChildAt(i8), i8 <= i7 ? 0 : 8);
                    i8++;
                }
                ((androidx.constraintlayout.widget.d) ((ConstraintLayout) getChildAt(0)).getLayoutParams()).f2802J = i6 == 0 ? 1 : 0;
            }
        }
        int min = Math.min(4, i4);
        for (int i9 = 0; i9 < min; i9++) {
            View findViewById = getChildAt(i9).findViewById(i5);
            if (findViewById == null) {
                Log.w("BcSmartspaceCardWeatherForecast", String.format(Locale.US, c.a("Missing ", str, " view to update at column: %d."), Integer.valueOf(i9 + 1)));
                return;
            }
            interfaceC0044q.a(findViewById, i9);
        }
    }

    public BcSmartspaceCardWeatherForecast(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
