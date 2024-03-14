package com.android.systemui.shared.rotation;

import j.C1080K;
import v.C1429e;
/* loaded from: classes.dex */
public final class FloatingRotationButtonPositionCalculator {
    private final int defaultMargin;
    private final boolean floatingRotationButtonPositionLeft;
    private final int taskbarMarginBottom;
    private final int taskbarMarginLeft;

    /* loaded from: classes.dex */
    public final class Position {
        private final int gravity;
        private final int translationX;
        private final int translationY;

        public Position(int i4, int i5, int i6) {
            this.gravity = i4;
            this.translationX = i5;
            this.translationY = i6;
        }

        public static /* synthetic */ Position copy$default(Position position, int i4, int i5, int i6, int i7, Object obj) {
            if ((i7 & 1) != 0) {
                i4 = position.gravity;
            }
            if ((i7 & 2) != 0) {
                i5 = position.translationX;
            }
            if ((i7 & 4) != 0) {
                i6 = position.translationY;
            }
            return position.copy(i4, i5, i6);
        }

        public final int component1() {
            return this.gravity;
        }

        public final int component2() {
            return this.translationX;
        }

        public final int component3() {
            return this.translationY;
        }

        public final Position copy(int i4, int i5, int i6) {
            return new Position(i4, i5, i6);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Position) {
                Position position = (Position) obj;
                return this.gravity == position.gravity && this.translationX == position.translationX && this.translationY == position.translationY;
            }
            return false;
        }

        public final int getGravity() {
            return this.gravity;
        }

        public final int getTranslationX() {
            return this.translationX;
        }

        public final int getTranslationY() {
            return this.translationY;
        }

        public int hashCode() {
            int hashCode = Integer.hashCode(this.translationX);
            return Integer.hashCode(this.translationY) + ((hashCode + (Integer.hashCode(this.gravity) * 31)) * 31);
        }

        public String toString() {
            int i4 = this.gravity;
            int i5 = this.translationX;
            int i6 = this.translationY;
            StringBuilder sb = new StringBuilder("Position(gravity=");
            sb.append(i4);
            sb.append(", translationX=");
            sb.append(i5);
            sb.append(", translationY=");
            return C1429e.a(sb, i6, ")");
        }
    }

    public FloatingRotationButtonPositionCalculator(int i4, int i5, int i6, boolean z4) {
        this.defaultMargin = i4;
        this.taskbarMarginLeft = i5;
        this.taskbarMarginBottom = i6;
        this.floatingRotationButtonPositionLeft = z4;
    }

    private final int resolveGravity(int i4) {
        if (this.floatingRotationButtonPositionLeft) {
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            throw new IllegalArgumentException(C1080K.a("Invalid rotation ", i4));
                        }
                        return 51;
                    }
                    return 53;
                }
                return 85;
            }
            return 83;
        }
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        return 83;
                    }
                    throw new IllegalArgumentException(C1080K.a("Invalid rotation ", i4));
                }
                return 51;
            }
            return 53;
        }
        return 85;
    }

    public final Position calculatePosition(int i4, boolean z4, boolean z5) {
        boolean z6 = false;
        if ((i4 == 0 || i4 == 1) && z4 && !z5) {
            z6 = true;
        }
        int resolveGravity = resolveGravity(i4);
        int i5 = z6 ? this.taskbarMarginLeft : this.defaultMargin;
        int i6 = z6 ? this.taskbarMarginBottom : this.defaultMargin;
        if ((resolveGravity & 5) == 5) {
            i5 = -i5;
        }
        if ((resolveGravity & 80) == 80) {
            i6 = -i6;
        }
        return new Position(resolveGravity, i5, i6);
    }
}
