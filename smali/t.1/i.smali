.class public final Lt/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt/m;

    check-cast p2, Lt/m;

    iget p0, p1, Lt/m;->e:I

    iget p1, p2, Lt/m;->e:I

    sub-int/2addr p0, p1

    return p0
.end method
