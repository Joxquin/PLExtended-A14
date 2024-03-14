package com.android.systemui.shared.plugins;

import android.util.ArrayMap;
import java.util.function.BiConsumer;
import o1.InterfaceC1322a;
import o1.InterfaceC1323b;
import o1.InterfaceC1324c;
import o1.InterfaceC1325d;
import o1.InterfaceC1326e;
/* loaded from: classes.dex */
public class VersionInfo {
    private Class mDefault;
    private final ArrayMap mVersions = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Version {
        private final boolean mRequired;
        private final int mVersion;

        public Version(int i4, boolean z4) {
            this.mVersion = i4;
            this.mRequired = z4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Version createVersion(Class cls) {
        InterfaceC1324c interfaceC1324c = (InterfaceC1324c) cls.getDeclaredAnnotation(InterfaceC1324c.class);
        if (interfaceC1324c != null) {
            return new Version(interfaceC1324c.version(), false);
        }
        return null;
    }

    public VersionInfo addClass(Class cls) {
        if (this.mDefault == null) {
            this.mDefault = cls;
        }
        addClass(cls, false);
        return this;
    }

    public void checkVersion(VersionInfo versionInfo) {
        final ArrayMap arrayMap = new ArrayMap(this.mVersions);
        versionInfo.mVersions.forEach(new BiConsumer() { // from class: com.android.systemui.shared.plugins.VersionInfo.1
            @Override // java.util.function.BiConsumer
            public void accept(Class cls, Version version) {
                Version version2 = (Version) arrayMap.remove(cls);
                if (version2 == null) {
                    version2 = VersionInfo.this.createVersion(cls);
                }
                if (version2 != null) {
                    if (version2.mVersion != version.mVersion) {
                        throw new InvalidVersionException(cls, version2.mVersion < version.mVersion, version2.mVersion, version.mVersion);
                    }
                    return;
                }
                throw new InvalidVersionException(cls.getSimpleName().concat(" does not provide an interface"), false);
            }
        });
        arrayMap.forEach(new BiConsumer() { // from class: com.android.systemui.shared.plugins.VersionInfo.2
            @Override // java.util.function.BiConsumer
            public void accept(Class cls, Version version) {
                if (version.mRequired) {
                    throw new InvalidVersionException("Missing required dependency ".concat(cls.getSimpleName()), false);
                }
            }
        });
    }

    public int getDefaultVersion() {
        return ((Version) this.mVersions.get(this.mDefault)).mVersion;
    }

    public boolean hasClass(Class cls) {
        return this.mVersions.containsKey(cls);
    }

    public boolean hasVersionInfo() {
        return !this.mVersions.isEmpty();
    }

    /* loaded from: classes.dex */
    public class InvalidVersionException extends RuntimeException {
        private int mActual;
        private int mExpected;
        private final boolean mTooNew;

        public InvalidVersionException(String str, boolean z4) {
            super(str);
            this.mTooNew = z4;
        }

        public int getActualVersion() {
            return this.mActual;
        }

        public int getExpectedVersion() {
            return this.mExpected;
        }

        public boolean isTooNew() {
            return this.mTooNew;
        }

        public InvalidVersionException(Class cls, boolean z4, int i4, int i5) {
            super(cls.getSimpleName() + " expected version " + i4 + " but had " + i5);
            this.mTooNew = z4;
            this.mExpected = i4;
            this.mActual = i5;
        }
    }

    private void addClass(Class cls, boolean z4) {
        InterfaceC1326e[] value;
        if (this.mVersions.containsKey(cls)) {
            return;
        }
        InterfaceC1324c interfaceC1324c = (InterfaceC1324c) cls.getDeclaredAnnotation(InterfaceC1324c.class);
        if (interfaceC1324c != null) {
            this.mVersions.put(cls, new Version(interfaceC1324c.version(), true));
        }
        InterfaceC1326e interfaceC1326e = (InterfaceC1326e) cls.getDeclaredAnnotation(InterfaceC1326e.class);
        if (interfaceC1326e != null) {
            this.mVersions.put(interfaceC1326e.target(), new Version(interfaceC1326e.version(), z4));
        }
        InterfaceC1325d interfaceC1325d = (InterfaceC1325d) cls.getDeclaredAnnotation(InterfaceC1325d.class);
        if (interfaceC1325d != null) {
            for (InterfaceC1326e interfaceC1326e2 : interfaceC1325d.value()) {
                this.mVersions.put(interfaceC1326e2.target(), new Version(interfaceC1326e2.version(), z4));
            }
        }
        InterfaceC1323b interfaceC1323b = (InterfaceC1323b) cls.getDeclaredAnnotation(InterfaceC1323b.class);
        if (interfaceC1323b != null) {
            addClass(interfaceC1323b.target(), true);
        }
        InterfaceC1322a interfaceC1322a = (InterfaceC1322a) cls.getDeclaredAnnotation(InterfaceC1322a.class);
        if (interfaceC1322a != null) {
            for (InterfaceC1323b interfaceC1323b2 : interfaceC1322a.value()) {
                addClass(interfaceC1323b2.target(), true);
            }
        }
    }
}
