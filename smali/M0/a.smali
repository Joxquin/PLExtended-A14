.class public final synthetic LM0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/icons/cache/BaseIconCache;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/a;->d:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iput p2, p0, LM0/a;->e:I

    iput p3, p0, LM0/a;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LM0/a;->d:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget v1, p0, LM0/a;->e:I

    iget p0, p0, LM0/a;->f:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->a(Lcom/android/launcher3/icons/cache/BaseIconCache;II)V

    return-void
.end method
