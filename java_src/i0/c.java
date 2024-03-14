package i0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import q.m;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public final m f9605a;

    /* renamed from: b  reason: collision with root package name */
    public final m f9606b;

    /* renamed from: c  reason: collision with root package name */
    public final m f9607c;

    public c(m mVar, m mVar2, m mVar3) {
        this.f9605a = mVar;
        this.f9606b = mVar2;
        this.f9607c = mVar3;
    }

    public abstract void A(Parcelable parcelable);

    public final void B(int i4, String str) {
        s(i4);
        C(str);
    }

    public abstract void C(String str);

    public abstract void D(IBinder iBinder);

    public final void E(e eVar) {
        if (eVar == null) {
            C(null);
            return;
        }
        try {
            C(b(eVar.getClass()).getName());
            d a4 = a();
            try {
                d(eVar.getClass()).invoke(null, eVar, a4);
                a4.F();
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException(e4);
            } catch (IllegalAccessException e5) {
                throw new RuntimeException(e5);
            } catch (NoSuchMethodException e6) {
                throw new RuntimeException(e6);
            } catch (InvocationTargetException e7) {
                Throwable cause = e7.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(e7);
                }
                throw ((Error) cause);
            }
        } catch (ClassNotFoundException e8) {
            throw new RuntimeException(eVar.getClass().getSimpleName().concat(" does not have a Parcelizer"), e8);
        }
    }

    public abstract d a();

    public final Class b(Class cls) {
        String name = cls.getName();
        m mVar = this.f9607c;
        Class cls2 = (Class) mVar.get(name);
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            mVar.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    public final Method c(String str) {
        m mVar = this.f9605a;
        Method method = (Method) mVar.get(str);
        if (method == null) {
            Method declaredMethod = Class.forName(str, true, c.class.getClassLoader()).getDeclaredMethod("read", c.class);
            mVar.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final Method d(Class cls) {
        String name = cls.getName();
        m mVar = this.f9606b;
        Method method = (Method) mVar.get(name);
        if (method == null) {
            Method declaredMethod = b(cls).getDeclaredMethod("write", cls, c.class);
            mVar.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final Object[] e(int i4, Object[] objArr) {
        Serializable serializable;
        if (j(i4)) {
            int k4 = k();
            if (k4 < 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(k4);
            if (k4 != 0) {
                int k5 = k();
                if (k4 < 0) {
                    return null;
                }
                if (k5 == 1) {
                    while (k4 > 0) {
                        arrayList.add(r());
                        k4--;
                    }
                } else if (k5 == 2) {
                    while (k4 > 0) {
                        arrayList.add(n());
                        k4--;
                    }
                } else if (k5 == 3) {
                    while (k4 > 0) {
                        String o4 = o();
                        if (o4 == null) {
                            serializable = null;
                        } else {
                            try {
                                serializable = (Serializable) new C0978b(new ByteArrayInputStream(h())).readObject();
                            } catch (IOException e4) {
                                throw new RuntimeException(E.c.a("Unable to read Serializable object (name = ", o4, ")"), e4);
                            } catch (ClassNotFoundException e5) {
                                throw new RuntimeException(E.c.a("Unable to read Serializable object (name = ", o4, ")"), e5);
                            }
                        }
                        arrayList.add(serializable);
                        k4--;
                    }
                } else if (k5 == 4) {
                    while (k4 > 0) {
                        arrayList.add(o());
                        k4--;
                    }
                } else if (k5 == 5) {
                    while (k4 > 0) {
                        arrayList.add(q());
                        k4--;
                    }
                }
            }
            return arrayList.toArray(objArr);
        }
        return objArr;
    }

    public abstract boolean f();

    public abstract Bundle g();

    public abstract byte[] h();

    public abstract CharSequence i();

    public abstract boolean j(int i4);

    public abstract int k();

    public final int l(int i4, int i5) {
        return !j(i5) ? i4 : k();
    }

    public abstract long m();

    public abstract Parcelable n();

    public abstract String o();

    public final String p(int i4, String str) {
        return !j(i4) ? str : o();
    }

    public abstract IBinder q();

    public final e r() {
        String o4 = o();
        if (o4 == null) {
            return null;
        }
        try {
            return (e) c(o4).invoke(null, a());
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException(e4);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(e5);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException(e6);
        } catch (InvocationTargetException e7) {
            Throwable cause = e7.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(e7);
        }
    }

    public abstract void s(int i4);

    public final void t(int i4, Object[] objArr) {
        int i5;
        s(i4);
        if (objArr == null) {
            y(-1);
            return;
        }
        int length = objArr.length;
        y(length);
        if (length > 0) {
            int i6 = 0;
            Object obj = objArr[0];
            if (obj instanceof String) {
                i5 = 4;
            } else if (obj instanceof Parcelable) {
                i5 = 2;
            } else if (obj instanceof e) {
                i5 = 1;
            } else if (obj instanceof Serializable) {
                i5 = 3;
            } else if (obj instanceof IBinder) {
                i5 = 5;
            } else if (obj instanceof Integer) {
                i5 = 7;
            } else if (!(obj instanceof Float)) {
                throw new IllegalArgumentException(obj.getClass().getName().concat(" cannot be VersionedParcelled"));
            } else {
                i5 = 8;
            }
            y(i5);
            if (i5 == 1) {
                while (i6 < length) {
                    E((e) objArr[i6]);
                    i6++;
                }
            } else if (i5 == 2) {
                while (i6 < length) {
                    A((Parcelable) objArr[i6]);
                    i6++;
                }
            } else if (i5 != 3) {
                if (i5 == 4) {
                    while (i6 < length) {
                        C((String) objArr[i6]);
                        i6++;
                    }
                } else if (i5 != 5) {
                } else {
                    while (i6 < length) {
                        D((IBinder) objArr[i6]);
                        i6++;
                    }
                }
            } else {
                while (i6 < length) {
                    Serializable serializable = (Serializable) objArr[i6];
                    if (serializable == null) {
                        C(null);
                    } else {
                        String name = serializable.getClass().getName();
                        C(name);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                            objectOutputStream.writeObject(serializable);
                            objectOutputStream.close();
                            w(byteArrayOutputStream.toByteArray());
                        } catch (IOException e4) {
                            throw new RuntimeException(E.c.a("VersionedParcelable encountered IOException writing serializable object (name = ", name, ")"), e4);
                        }
                    }
                    i6++;
                }
            }
        }
    }

    public abstract void u(boolean z4);

    public abstract void v(Bundle bundle);

    public abstract void w(byte[] bArr);

    public abstract void x(CharSequence charSequence);

    public abstract void y(int i4);

    public abstract void z(long j4);
}
