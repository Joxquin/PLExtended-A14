.class public final synthetic Lcom/android/launcher3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    check-cast p2, Lcom/android/launcher3/DevicePaddings$DevicePadding;

    invoke-static {p1}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->a(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result p0

    invoke-static {p2}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->a(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
