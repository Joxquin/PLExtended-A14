.class public final Lcom/android/launcher3/ContextualItem;
.super Lcom/android/launcher3/Item;
.source "SourceFile"


# instance fields
.field private default:Ljava/lang/Object;

.field private final defaultSupplier:Lm3/l;

.field private final isBackedUp:Z

.field private final isBootAware:Z

.field private final sharedPrefKey:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lm3/l;ZLjava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Item;-><init>()V

    const-string v0, "pref_allowRotation"

    iput-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    iput-object p1, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    iput-boolean p2, p0, Lcom/android/launcher3/ContextualItem;->isBootAware:Z

    iput-object p3, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final defaultValueFromContext(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    invoke-interface {v0, p1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->default:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/ContextualItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/ContextualItem;

    iget-object v1, p1, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    iget-boolean v3, p1, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    iget-object v3, p1, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/ContextualItem;->isBootAware:Z

    iget-boolean v3, p1, Lcom/android/launcher3/ContextualItem;->isBootAware:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getSharedPrefKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    if-eqz v2, :cond_0

    move v2, v1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/android/launcher3/ContextualItem;->isBootAware:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final isBackedUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextualItem(sharedPrefKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/ContextualItem;->sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBackedUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/ContextualItem;->isBackedUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSupplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/ContextualItem;->defaultSupplier:Lm3/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBootAware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/ContextualItem;->isBootAware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/ContextualItem;->type:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
