.class public final synthetic Lcom/android/launcher3/util/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/u;->a:Ljava/lang/Class;

    iput p2, p0, Lcom/android/launcher3/util/u;->b:I

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/u;->b:I

    iget-object p0, p0, Lcom/android/launcher3/util/u;->a:Ljava/lang/Class;

    invoke-static {v0, p1, p0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method
