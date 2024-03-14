.class public final Lcom/android/launcher3/ConstantItem;
.super Lcom/android/launcher3/Item;
.source "SourceFile"


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final isBackedUp:Z

.field private final isBootAware:Z

.field private final sharedPrefKey:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Z)V
    .locals 6

    .line 1
    invoke-static {p3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;)V
    .locals 1

    const-string v0, "sharedPrefKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/android/launcher3/Item;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    .line 6
    iput-object p3, p0, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lcom/android/launcher3/ConstantItem;->isBootAware:Z

    .line 8
    iput-object p5, p0, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    if-eqz p4, :cond_0

    .line 9
    sget p0, Lcom/android/launcher3/LauncherPrefsKt;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/ConstantItem;

    iget-object v1, p1, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    iget-boolean v3, p1, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/ConstantItem;->isBootAware:Z

    iget-boolean v3, p1, Lcom/android/launcher3/ConstantItem;->isBootAware:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSharedPrefKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    if-eqz v2, :cond_0

    move v2, v1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/launcher3/ConstantItem;->isBootAware:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isBackedUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConstantItem(sharedPrefKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/ConstantItem;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBackedUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/ConstantItem;->isBackedUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/ConstantItem;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBootAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/ConstantItem;->isBootAware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/ConstantItem;->type:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
