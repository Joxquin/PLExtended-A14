.class public final Lcom/android/wm/shell/animation/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/m;->b:Lcom/android/wm/shell/animation/g;

    .line 2
    iget v1, v0, Lcom/android/wm/shell/animation/g;->a:F

    iget v0, v0, Lcom/android/wm/shell/animation/g;->b:F

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 3
    sget-object v0, Lcom/android/wm/shell/animation/m;->a:Ljava/util/WeakHashMap;

    const v0, -0x800001

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/animation/g;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/wm/shell/animation/g;->a:F

    .line 7
    iput p2, p0, Lcom/android/wm/shell/animation/g;->b:F

    .line 8
    iput p3, p0, Lcom/android/wm/shell/animation/g;->c:F

    .line 9
    iput p4, p0, Lcom/android/wm/shell/animation/g;->d:F

    return-void
.end method


# virtual methods
.method public final a(Landroidx/dynamicanimation/animation/s;)V
    .locals 3

    iget-object v0, p1, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/t;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/t;-><init>()V

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/animation/g;->a:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/t;->b(F)V

    iget v1, p0, Lcom/android/wm/shell/animation/g;->b:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/t;->a(F)V

    iget v1, p0, Lcom/android/wm/shell/animation/g;->d:F

    float-to-double v1, v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/t;->i:D

    iput-object v0, p1, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget p0, p0, Lcom/android/wm/shell/animation/g;->c:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iput p0, p1, Landroidx/dynamicanimation/animation/m;->a:F

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/animation/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/animation/g;

    iget v1, p1, Lcom/android/wm/shell/animation/g;->a:F

    iget v3, p0, Lcom/android/wm/shell/animation/g;->a:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/animation/g;->b:F

    iget v3, p1, Lcom/android/wm/shell/animation/g;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/animation/g;->c:F

    iget v3, p1, Lcom/android/wm/shell/animation/g;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/wm/shell/animation/g;->d:F

    iget p1, p1, Lcom/android/wm/shell/animation/g;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/animation/g;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/wm/shell/animation/g;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/wm/shell/animation/g;->c:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/wm/shell/animation/g;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/animation/g;->c:F

    iget v1, p0, Lcom/android/wm/shell/animation/g;->d:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpringConfig(stiffness="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/wm/shell/animation/g;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", dampingRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/animation/g;->b:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", startVelocity="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", finalPosition="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
