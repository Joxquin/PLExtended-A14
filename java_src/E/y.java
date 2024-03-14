package e;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class y extends AbstractC0800A {

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f9003c = 0;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f9004d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f9005e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, O o4) {
        super(layoutInflater$Factory2C0803D);
        this.f9004d = layoutInflater$Factory2C0803D;
        this.f9005e = o4;
    }

    @Override // e.AbstractC0800A
    public final int b() {
        Location location;
        boolean z4;
        long j4;
        Location location2;
        int i4 = this.f9003c;
        Object obj = this.f9005e;
        switch (i4) {
            case 0:
                return ((PowerManager) obj).isPowerSaveMode() ? 2 : 1;
            default:
                O o4 = (O) obj;
                N n4 = o4.f8869c;
                if (n4.f8865b > System.currentTimeMillis()) {
                    z4 = n4.f8864a;
                } else {
                    Context context = o4.f8867a;
                    int a4 = C.e.a(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location location3 = null;
                    LocationManager locationManager = o4.f8868b;
                    if (a4 == 0) {
                        try {
                        } catch (Exception e4) {
                            Log.d("TwilightManager", "Failed to get last known location", e4);
                        }
                        if (locationManager.isProviderEnabled("network")) {
                            location2 = locationManager.getLastKnownLocation("network");
                            location = location2;
                        }
                        location2 = null;
                        location = location2;
                    } else {
                        location = null;
                    }
                    if (C.e.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                location3 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e5) {
                            Log.d("TwilightManager", "Failed to get last known location", e5);
                        }
                    }
                    if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                        location = location3;
                    }
                    if (location != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (M.f8860d == null) {
                            M.f8860d = new M();
                        }
                        M m4 = M.f8860d;
                        m4.a(location.getLatitude(), location.getLongitude(), currentTimeMillis - 86400000);
                        m4.a(location.getLatitude(), location.getLongitude(), currentTimeMillis);
                        r5 = m4.f8863c == 1;
                        long j5 = m4.f8862b;
                        long j6 = m4.f8861a;
                        m4.a(location.getLatitude(), location.getLongitude(), 86400000 + currentTimeMillis);
                        long j7 = m4.f8862b;
                        if (j5 == -1 || j6 == -1) {
                            j4 = 43200000 + currentTimeMillis;
                        } else {
                            j4 = (currentTimeMillis > j6 ? j7 + 0 : currentTimeMillis > j5 ? j6 + 0 : j5 + 0) + 60000;
                        }
                        n4.f8864a = r5;
                        n4.f8865b = j4;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i5 = Calendar.getInstance().get(11);
                        if (i5 < 6 || i5 >= 22) {
                            r5 = true;
                        }
                    }
                    z4 = r5;
                }
                return z4 ? 2 : 1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, Context context) {
        super(layoutInflater$Factory2C0803D);
        this.f9004d = layoutInflater$Factory2C0803D;
        this.f9005e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
