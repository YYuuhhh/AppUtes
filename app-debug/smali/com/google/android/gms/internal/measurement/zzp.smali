.class public abstract Lcom/google/android/gms/internal/measurement/zzp;
.super Lcom/google/android/gms/internal/measurement/zzb;
.source "com.google.android.gms:play-services-measurement-base@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .end local p0    # "this":Lcom/google/android/gms/internal/measurement/zzp;
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzq;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .end local p0    # "obj":Landroid/os/IBinder;
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzq;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzo;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 209
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 196
    :pswitch_1
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_12

    :pswitch_2
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_12

    .line 7
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->clearMeasurementEnabled(J)V

    goto/16 :goto_12

    :pswitch_4
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzp;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_12

    .line 11
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    nop

    .line 12
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_1

    .line 14
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 15
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 17
    :pswitch_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzp;->setDataCollectionEnabled(Z)V

    goto/16 :goto_12

    .line 19
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    nop

    .line 20
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 21
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_3

    .line 22
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 23
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 24
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 25
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzp;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzt;I)V

    goto/16 :goto_12

    .line 26
    :pswitch_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zzf(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzp;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_12

    .line 28
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 33
    :cond_4
    nop

    .line 29
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_5

    .line 31
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    .line 32
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    .line 33
    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_12

    .line 34
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 39
    :cond_6
    nop

    .line 35
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_7

    .line 37
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    .line 38
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_12

    .line 40
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 45
    :cond_8
    nop

    .line 41
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 42
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzw;

    if-eqz v2, :cond_9

    .line 43
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzw;

    goto :goto_4

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    .line 44
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzw;)V

    goto/16 :goto_12

    .line 46
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 51
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzp;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_12

    :pswitch_d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_5

    .line 59
    :cond_a
    nop

    .line 54
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 55
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_b

    .line 56
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_5

    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 57
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 58
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzp;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzt;J)V

    goto/16 :goto_12

    .line 60
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_6

    .line 67
    :cond_c
    nop

    .line 62
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 63
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_d

    .line 64
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_6

    :cond_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 65
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 66
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 67
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzp;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzt;J)V

    goto/16 :goto_12

    .line 68
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_12

    .line 71
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 73
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_12

    .line 74
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_12

    .line 77
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 80
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_12

    .line 81
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 83
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_12

    .line 84
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_12

    .line 87
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_12

    .line 90
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_12

    .line 93
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 98
    :cond_e
    nop

    .line 94
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 95
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_f

    .line 96
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_7

    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 97
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 98
    :goto_7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->generateEventId(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 99
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_8

    .line 104
    :cond_10
    nop

    .line 100
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 101
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_11

    .line 102
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_8

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 103
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 104
    :goto_8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 105
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_9

    .line 110
    :cond_12
    nop

    .line 106
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 107
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_13

    .line 108
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_9

    :cond_13
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 109
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 110
    :goto_9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 111
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_a

    .line 116
    :cond_14
    nop

    .line 112
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 113
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_15

    .line 114
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_a

    :cond_15
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 115
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 116
    :goto_a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 117
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_b

    .line 122
    :cond_16
    nop

    .line 118
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 119
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v2, :cond_17

    .line 120
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzy;

    goto :goto_b

    :cond_17
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzx;

    .line 121
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(Landroid/os/IBinder;)V

    .line 122
    :goto_b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzy;)V

    goto/16 :goto_12

    .line 123
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_c

    .line 128
    :cond_18
    nop

    .line 124
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 125
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_19

    .line 126
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_c

    :cond_19
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 127
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 128
    :goto_c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 129
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_d

    .line 134
    :cond_1a
    nop

    .line 130
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 131
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v2, :cond_1b

    .line 132
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_d

    :cond_1b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 133
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 134
    :goto_d
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 135
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 139
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzp;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_12

    .line 140
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->setSessionTimeoutDuration(J)V

    goto/16 :goto_12

    .line 142
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->setMinimumSessionDuration(J)V

    goto/16 :goto_12

    .line 144
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->resetAnalyticsData(J)V

    goto/16 :goto_12

    .line 146
    :pswitch_22
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_12

    .line 149
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_e

    .line 156
    :cond_1c
    nop

    .line 152
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 153
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_1d

    .line 154
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_e

    :cond_1d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 155
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 156
    :goto_e
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 157
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzp;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_12

    :pswitch_25
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 163
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_12

    .line 164
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 166
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzp;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_12

    .line 167
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_f

    .line 173
    :cond_1e
    nop

    .line 169
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 170
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_1f

    .line 171
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_f

    :cond_1f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 172
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 173
    :goto_f
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 174
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_10

    .line 182
    :cond_20
    nop

    .line 178
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 179
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_21

    .line 180
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzt;

    goto :goto_10

    :cond_21
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    .line 181
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 182
    :goto_10
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzp;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzt;)V

    goto/16 :goto_12

    .line 183
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 188
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzp;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_12

    .line 189
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_22

    move-object v6, v3

    goto :goto_11

    .line 210
    :cond_22
    nop

    .line 193
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 194
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzt;

    if-eqz v3, :cond_23

    .line 195
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzt;

    move-object v6, v2

    goto :goto_11

    :cond_23
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzr;

    .line 196
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    move-object v6, v2

    .line 197
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 198
    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzp;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzt;J)V

    goto :goto_12

    .line 199
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 202
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v4

    .line 203
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzc;->zza(Landroid/os/Parcel;)Z

    move-result v5

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 205
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzp;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_12

    .line 206
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzz;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 209
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzz;J)V

    .line 210
    :goto_12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
